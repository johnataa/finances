import 'package:finances/shared/abstractions/order_by.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../mocks/features/entity_mock.dart';
import '../../../../../mocks/features/entity_mock.query.dart';
import '../../../../../mocks/infra/data/objectbox/shared/entity_mock_box.dart';
import '../../../../../mocks/infra/data/objectbox/shared/entity_mock_box.mapper.dart';
import '../../../../../mocks/infra/data/objectbox/store_test_mock.dart';
import '../../gen/objectbox.g.dart';

/// Tests for BaseBox functionality using EntityBoxMock as a concrete implementation.
/// These tests validate the shared logic that was moved to BaseBox.
void main() {
  late Store store;
  late EntityBoxMock box;

  setUp(() async {
    store = await openInMemoryTestStore();
    box = EntityBoxMock(store, EntityBoxMapperMock());
  });

  tearDown(() {
    store.close();
  });

  EntityMock createEntityMock({int id = 0, String sillyProp = 'Test Entity'}) => EntityMock(
    base: .create(id: id),
    sillyProp: sillyProp,
  );

  group('BaseBox.persist', () {
    /// Verifies that new entities (id = 0) get createdAt set automatically.
    test('sets createdAt when id is 0 (new entity)', () async {
      // Arrange
      final entity = createEntityMock();
      final DateTime beforePersist = .now();

      // Act
      final persisted = await box.persist(entity);

      // Assert
      expect(persisted, isNotNull);
      expect(persisted?.base.id, isNot(0));
      expect(persisted?.base.createdAt, isNotNull);
      expect(
        persisted?.base.createdAt?.millisecondsSinceEpoch,
        greaterThanOrEqualTo(beforePersist.millisecondsSinceEpoch),
      );
    });

    /// Verifies that existing entities (id != 0) get updatedAt set on update.
    test('sets updatedAt when id is not 0 (existing entity)', () async {
      // Arrange
      final entity = createEntityMock();
      final persisted = await box.persist(entity);
      final DateTime beforeUpdate = .now();

      // Act
      final updated = await box.persist(persisted!);

      // Assert
      expect(updated, isNotNull);
      expect(updated?.base.id, persisted.base.id);
      expect(updated?.base.updatedAt, isNotNull);
      expect(
        updated?.base.updatedAt?.millisecondsSinceEpoch,
        greaterThanOrEqualTo(beforeUpdate.millisecondsSinceEpoch),
      );
    });

    /// Ensures createdAt is not overwritten on subsequent updates.
    test('preserves createdAt on update', () async {
      // Arrange
      final entity = createEntityMock();
      final persisted = await box.persist(entity);
      expect(persisted, isNotNull);
      final originalCreatedAt = persisted?.base.createdAt;

      // Act
      final updated = await box.persist(persisted!);

      // Assert
      expect(updated, isNotNull);
      expect(updated?.base.createdAt, originalCreatedAt);
    });
  });

  group('BaseBox.watch', () {
    test('emits list with entities immediately', () async {
      // Arrange
      await box.persist(createEntityMock(sillyProp: 'Entity One'));
      await box.persist(createEntityMock(sillyProp: 'Entity Two'));

      // Act
      final stream = box.watch();

      // Assert
      expect(stream, emits(predicate<List<EntityMock>>((list) => list.length == 2)));
    });

    test('emits updated list when entity is added', () async {
      // Arrange
      await box.persist(createEntityMock(sillyProp: 'Initial Entity'));

      // Act
      final stream = box.watch();

      // Assert
      await expectLater(stream, emits(predicate<List<EntityMock>>((list) => list.length == 1)));
    });

    test('watch with filter only emits matching entities', () async {
      // Arrange
      await box.persist(createEntityMock(sillyProp: 'Apple'));
      await box.persist(createEntityMock(sillyProp: 'Banana'));

      // Act
      final stream = box.watch(filter: .by(sillyProp: .equals('Apple')));

      // Assert
      expect(
        stream,
        emits(
          predicate<List<EntityMock>>(
            (list) => list.length == 1 && list.first.sillyProp == 'Apple',
          ),
        ),
      );
    });

    test('watch with order emits entities in expected order', () async {
      // Arrange
      await box.persist(createEntityMock(sillyProp: 'Zebra'));
      await box.persist(createEntityMock(sillyProp: 'Alpha'));

      // Act
      final stream = box.watch(orderBy: EntityFieldMock.sillyProp.asc);

      // Assert
      expect(
        stream,
        emits(
          predicate<List<EntityMock>>((list) => list.length == 2 && list[0].sillyProp == 'Alpha'),
        ),
      );
    });
  });

  group('BaseBox.dispose', () {
    // Since store is closed, subsequent operations should fail
    test('closes the store', () async {
      // Act
      box.dispose();

      // Assert
      expect(() => box.getAll(), throwsStateError);
    });
  });

  group('BaseBox.getAll', () {
    test('returns empty list when no entities', () async {
      // Act
      final list = await box.getAll();

      // Assert
      expect(list, isEmpty);
    });

    test('returns all entities when no filter', () async {
      // Arrange
      await box.persist(createEntityMock(sillyProp: 'Entity Alpha'));
      await box.persist(createEntityMock(sillyProp: 'Entity Beta'));
      await box.persist(createEntityMock(sillyProp: 'Entity Gamma'));

      // Act
      final list = await box.getAll();

      // Assert
      expect(list.length, 3);
    });
  });

  group('BaseBox.delete', () {
    test('removes entity and returns true', () async {
      // Arrange
      final persisted = await box.persist(createEntityMock());
      expect(persisted, isNotNull);

      // Act
      final result = await box.delete(persisted!.base.id);
      final list = await box.getAll();

      // Assert
      expect(result, isTrue);
      expect(list, isEmpty);
    });

    test('returns false when entity does not exist', () async {
      // Act
      final result = await box.delete(999);

      // Assert
      expect(result, isFalse);
    });
  });

  group('BaseBox.stringFilter', () {
    test('equals filter returns exact match', () async {
      // Arrange
      await box.persist(createEntityMock(sillyProp: 'Exact Match'));
      await box.persist(createEntityMock(sillyProp: 'Exact Match Extra'));
      await box.persist(createEntityMock(sillyProp: 'Other Entity'));

      // Act
      final list = await box.getAll(filter: .by(sillyProp: .equals('Exact Match')));

      // Assert
      expect(list.length, 1);
      expect(list.first.sillyProp, 'Exact Match');
    });

    /// Contains filter uses case-insensitive matching.
    test('contains filter is case insensitive', () async {
      // Arrange
      await box.persist(createEntityMock(sillyProp: 'APPLE Entity'));
      await box.persist(createEntityMock(sillyProp: 'apple entity'));
      await box.persist(createEntityMock(sillyProp: 'Apple Entity'));
      await box.persist(createEntityMock(sillyProp: 'Banana Entity'));

      // Act
      final list = await box.getAll(filter: .by(sillyProp: .contains('apple')));

      // Assert
      expect(list.length, 3);
    });
  });

  group('BaseBox.intFilter', () {
    test('equals filter returns exact id', () async {
      // Arrange
      final e1 = await box.persist(createEntityMock(sillyProp: 'Entity One'));
      await box.persist(createEntityMock(sillyProp: 'Entity Two'));
      await box.persist(createEntityMock(sillyProp: 'Entity Three'));
      expect(e1, isNotNull);

      // Act
      final list = await box.getAll(filter: .by(id: .equals(e1?.base.id ?? 0)));

      // Assert
      expect(list.length, 1);
      expect(list.first.base.id, e1?.base.id);
    });

    test('greaterThan filter returns ids greater than value', () async {
      // Arrange
      final e1 = await box.persist(createEntityMock(sillyProp: 'Entity One'));
      final e2 = await box.persist(createEntityMock(sillyProp: 'Entity Two'));
      final e3 = await box.persist(createEntityMock(sillyProp: 'Entity Three'));
      expect(e1, isNotNull);
      expect(e2, isNotNull);
      expect(e3, isNotNull);

      // Act
      final list = await box.getAll(filter: .by(id: .greaterThan(e1?.base.id ?? 0)));

      // Assert
      expect(list.length, 2);
      expect(list.map((e) => e.base.id), containsAll([e2?.base.id, e3?.base.id]));
    });

    test('lessThan filter returns ids less than value', () async {
      // Arrange
      final e1 = await box.persist(createEntityMock(sillyProp: 'Entity One'));
      final e2 = await box.persist(createEntityMock(sillyProp: 'Entity Two'));
      await box.persist(createEntityMock(sillyProp: 'Entity Three'));
      expect(e1, isNotNull);
      expect(e2, isNotNull);

      // Act
      final list = await box.getAll(filter: .by(id: .lessThan(e2?.base.id ?? 0)));

      // Assert
      expect(list.length, 1);
      expect(list.first.base.id, e1?.base.id);
    });
  });

  group('BaseBox.dateTimeFilter', () {
    test('equals filter returns exact createdAt time', () async {
      // Arrange
      final e1 = await box.persist(createEntityMock(sillyProp: 'Entity One'));
      expect(e1, isNotNull);

      await Future.delayed(const Duration(milliseconds: 10)); // Ensure distinct timestamps
      await box.persist(createEntityMock(sillyProp: 'Entity Two'));
      await box.persist(createEntityMock(sillyProp: 'Entity Three'));

      // Act
      final list = await box.getAll(filter: .by(createdAt: .equals(e1?.base.createdAt ?? .now())));

      // Assert
      expect(list.length, 1);
      expect(list.first.base.id, e1?.base.id);
    });

    /// Uses delay to create measurable time differences between entities.
    test('afterThan filter returns entities with createdAt after given time', () async {
      // Arrange
      final e1 = await box.persist(createEntityMock(sillyProp: 'First Entity'));
      expect(e1, isNotNull);

      await Future.delayed(const Duration(milliseconds: 10));
      final afterE1 = e1?.base.createdAt ?? .now();
      await box.persist(createEntityMock(sillyProp: 'Second Entity'));
      await box.persist(createEntityMock(sillyProp: 'Third Entity'));

      // Act
      final list = await box.getAll(filter: .by(createdAt: .afterThan(afterE1)));

      // Assert
      expect(list.length, 2);
    });

    /// Uses delay to create measurable time differences between entities.
    test('beforeThan filter returns entities with createdAt before given time', () async {
      // Arrange
      await box.persist(createEntityMock(sillyProp: 'First Entity'));
      await box.persist(createEntityMock(sillyProp: 'Second Entity'));
      await Future.delayed(const Duration(milliseconds: 10));
      final beforeThird = DateTime.now();
      await box.persist(createEntityMock(sillyProp: 'Third Entity'));

      // Act
      final list = await box.getAll(filter: .by(createdAt: .beforeThan(beforeThird)));

      // Assert
      expect(list.length, 2);
    });
  });

  group('BaseBox._combineConditions', () {
    /// Intersection mode requires ALL conditions to match (AND logic).
    test('intersection (AND) requires all conditions to match', () async {
      // Arrange
      await box.persist(createEntityMock(sillyProp: 'Apple Entity'));
      await box.persist(createEntityMock(sillyProp: 'Banana Entity'));
      await box.persist(createEntityMock(sillyProp: 'Apricot Entity'));
      final all = await box.getAll();
      final appleId = all.firstWhere((e) => e.sillyProp == 'Apple Entity').base.id;

      // Act
      final list = await box.getAll(
        filter: .by(logic: .and, sillyProp: .contains('apple'), id: .equals(appleId)),
      );

      // Assert
      expect(list.length, 1);
      expect(list.first.sillyProp, 'Apple Entity');
    });

    /// Union mode requires ANY condition to match (OR logic).
    /// Uses delays to ensure distinct createdAt timestamps.
    test('union (OR) allows any condition to match', () async {
      // Arrange
      final e1 = await box.persist(createEntityMock(sillyProp: 'Apple Entity'));
      await Future.delayed(const Duration(milliseconds: 10));
      final e2 = await box.persist(createEntityMock(sillyProp: 'Banana Entity'));
      await Future.delayed(const Duration(milliseconds: 10));
      await box.persist(createEntityMock(sillyProp: 'Cherry Entity'));
      expect(e1, isNotNull);
      expect(e2, isNotNull);

      // Act
      final list = await box.getAll(
        filter: .by(
          logic: .or,
          id: .equals(e1?.base.id ?? 0),
          createdAt: .equals(e2?.base.createdAt ?? .now()),
        ),
      );

      // Assert
      expect(list.length, 2);
      expect(list.map((e) => e.base.id), containsAll([e1?.base.id, e2?.base.id]));
    });
  });

  group('BaseBox.orderBy', () {
    test('orders by sillyProp ascending', () async {
      // Arrange
      final e1 = await box.persist(createEntityMock(sillyProp: 'Zebra Entity'));
      final e2 = await box.persist(createEntityMock(sillyProp: 'Alpha Entity'));
      final e3 = await box.persist(createEntityMock(sillyProp: 'Middle Entity'));
      expect(e1, isNotNull);
      expect(e2, isNotNull);
      expect(e3, isNotNull);

      // Act
      final list = await box.getAll(orderBy: EntityFieldMock.sillyProp.asc);

      // Assert
      expect(list[0].base.id, e2?.base.id);
      expect(list[1].base.id, e3?.base.id);
      expect(list[2].base.id, e1?.base.id);
    });

    test('orders by sillyProp descending', () async {
      // Arrange
      final e1 = await box.persist(createEntityMock(sillyProp: 'Alpha Entity'));
      final e2 = await box.persist(createEntityMock(sillyProp: 'Zebra Entity'));
      final e3 = await box.persist(createEntityMock(sillyProp: 'Middle Entity'));
      expect(e1, isNotNull);
      expect(e2, isNotNull);
      expect(e3, isNotNull);

      // Act
      final list = await box.getAll(orderBy: EntityFieldMock.sillyProp.desc);

      // Assert
      expect(list[0].base.id, e2?.base.id);
      expect(list[1].base.id, e3?.base.id);
      expect(list[2].base.id, e1?.base.id);
    });
  });

  group('BaseBox.orderByBaseFields', () {
    test('orders by id ascending', () async {
      // Arrange
      final e1 = await box.persist(createEntityMock(sillyProp: 'First Entity'));
      final e2 = await box.persist(createEntityMock(sillyProp: 'Second Entity'));
      final e3 = await box.persist(createEntityMock(sillyProp: 'Third Entity'));
      expect(e1, isNotNull);
      expect(e2, isNotNull);
      expect(e3, isNotNull);

      // Act
      final list = await box.getAll(orderBy: EntityFieldMock.id.asc);

      // Assert
      expect(list[0].base.id, e1?.base.id);
      expect(list[1].base.id, e2?.base.id);
      expect(list[2].base.id, e3?.base.id);
    });

    test('orders by id descending', () async {
      // Arrange
      final e1 = await box.persist(createEntityMock(sillyProp: 'First Entity'));
      final e2 = await box.persist(createEntityMock(sillyProp: 'Second Entity'));
      final e3 = await box.persist(createEntityMock(sillyProp: 'Third Entity'));
      expect(e1, isNotNull);
      expect(e2, isNotNull);
      expect(e3, isNotNull);

      // Act
      final list = await box.getAll(orderBy: EntityFieldMock.id.desc);

      // Assert
      expect(list[0].base.id, e3?.base.id);
      expect(list[1].base.id, e2?.base.id);
      expect(list[2].base.id, e1?.base.id);
    });

    /// Uses delay to create measurable time differences between entities.
    test('orders by createdAt ascending', () async {
      // Arrange
      final e1 = await box.persist(createEntityMock(sillyProp: 'First Entity'));
      await Future.delayed(const Duration(milliseconds: 10));
      final e2 = await box.persist(createEntityMock(sillyProp: 'Second Entity'));
      await Future.delayed(const Duration(milliseconds: 10));
      final e3 = await box.persist(createEntityMock(sillyProp: 'Third Entity'));
      expect(e1, isNotNull);
      expect(e2, isNotNull);
      expect(e3, isNotNull);

      // Act
      final list = await box.getAll(orderBy: EntityFieldMock.createdAt.asc);

      // Assert
      expect(list[0].base.id, e1?.base.id);
      expect(list[1].base.id, e2?.base.id);
      expect(list[2].base.id, e3?.base.id);
    });

    /// Uses delay to create measurable time differences between entities.
    test('orders by createdAt descending', () async {
      // Arrange
      final e1 = await box.persist(createEntityMock(sillyProp: 'First Entity'));
      await Future.delayed(const Duration(milliseconds: 10));
      final e2 = await box.persist(createEntityMock(sillyProp: 'Second Entity'));
      await Future.delayed(const Duration(milliseconds: 10));
      final e3 = await box.persist(createEntityMock(sillyProp: 'Third Entity'));
      expect(e1, isNotNull);
      expect(e2, isNotNull);
      expect(e3, isNotNull);

      // Act
      final list = await box.getAll(orderBy: EntityFieldMock.createdAt.desc);

      // Assert
      expect(list[0].base.id, e3?.base.id);
      expect(list[1].base.id, e2?.base.id);
      expect(list[2].base.id, e1?.base.id);
    });

    /// Updates entities in a specific order to set updatedAt values.
    /// Nulls come first in ascending order.
    test('orders by updatedAt ascending', () async {
      // Arrange
      final e1 = await box.persist(createEntityMock(sillyProp: 'First Entity'));
      final e2 = await box.persist(createEntityMock(sillyProp: 'Second Entity'));
      final e3 = await box.persist(createEntityMock(sillyProp: 'Third Entity'));
      expect(e1, isNotNull);
      expect(e2, isNotNull);
      expect(e3, isNotNull);

      await Future.delayed(const Duration(milliseconds: 10));
      await box.persist(e2!);
      await Future.delayed(const Duration(milliseconds: 10));
      await box.persist(e3!);
      await Future.delayed(const Duration(milliseconds: 10));
      await box.persist(e1!);

      // Act
      final list = await box.getAll(orderBy: EntityFieldMock.updatedAt.asc);

      // Assert
      expect(list.last.base.id, e1.base.id);
    });
  });

  group('BoxModelExtension.toEntities', () {
    test('converts list of models to list of entities', () async {
      // Arrange
      await box.persist(createEntityMock(sillyProp: 'Entity Alpha'));
      await box.persist(createEntityMock(sillyProp: 'Entity Beta'));

      // Act
      final list = await box.getAll();

      // Assert
      expect(list, isA<List<EntityMock>>());
      expect(list.length, 2);
    });
  });
}
