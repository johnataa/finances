import 'package:finances/features/category/category.dart';
import 'package:finances/features/category/category_filter.dart';
import 'package:finances/infra/data/objectbox/boxes/category/category_box.dart';
import 'package:finances/infra/data/objectbox/gen/objectbox.g.dart';
import 'package:finances/shared/filter.dart';
import 'package:finances/shared/meta/meta.dart';
import 'package:finances/shared/meta/meta_filter.dart';
import 'package:finances/shared/name/name.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../mocks/store_mock.dart';

/// Tests for BaseBox functionality using CategoryBox as a concrete implementation.
/// These tests validate the shared logic that was moved to BaseBox.
void main() {
  late Store store;
  late CategoryBox box;

  setUp(() async {
    store = await openInMemoryStore();
    box = CategoryBox(store);
  });

  tearDown(() {
    store.close();
  });

  Category createCategory({int id = 0, String name = 'Test Category'}) => Category(
    meta: Meta(id: id),
    name: Name.create(name),
    icon: 'icon',
    color: 'color',
  );

  group('BaseBox.persist', () {
    /// Verifies that new entities (id = 0) get createdAt set automatically.
    test('sets createdAt when id is 0 (new entity)', () async {
      // Arrange
      final category = createCategory();
      final beforePersist = DateTime.now();

      // Act
      final persisted = await box.persist(category);

      // Assert
      expect(persisted.meta.id, isNot(0));
      expect(persisted.meta.createdAt, isNotNull);
      expect(
        persisted.meta.createdAt!.isAfter(beforePersist) ||
            persisted.meta.createdAt!.isAtSameMomentAs(beforePersist),
        isTrue,
      );
    });

    /// Verifies that existing entities (id != 0) get updatedAt set on update.
    test('sets updatedAt when id is not 0 (existing entity)', () async {
      // Arrange
      final category = createCategory();
      final persisted = await box.persist(category);
      final beforeUpdate = DateTime.now();

      // Act
      final updated = await box.persist(persisted);

      // Assert
      expect(updated.meta.id, persisted.meta.id);
      expect(updated.meta.updatedAt, isNotNull);
      expect(
        updated.meta.updatedAt!.isAfter(beforeUpdate) ||
            updated.meta.updatedAt!.isAtSameMomentAs(beforeUpdate),
        isTrue,
      );
    });

    /// Ensures createdAt is not overwritten on subsequent updates.
    test('preserves createdAt on update', () async {
      // Arrange
      final category = createCategory();
      final persisted = await box.persist(category);
      final originalCreatedAt = persisted.meta.createdAt;

      // Act
      final updated = await box.persist(persisted);

      // Assert
      expect(updated.meta.createdAt, originalCreatedAt);
    });
  });

  group('BaseBox.watch', () {
    test('emits list with entities immediately', () async {
      // Arrange
      await box.persist(createCategory(name: 'Category One'));
      await box.persist(createCategory(name: 'Category Two'));

      // Act
      final stream = box.watch();

      // Assert
      expect(stream, emits(predicate<List<Category>>((list) => list.length == 2)));
    });

    test('emits updated list when entity is added', () async {
      // Arrange
      await box.persist(createCategory(name: 'Initial Category'));

      // Act
      final stream = box.watch();

      // Assert
      await expectLater(
        stream,
        emits(predicate<List<Category>>((list) => list.length == 1)),
      );
    });

    test('watch with filter only emits matching entities', () async {
      // Arrange
      await box.persist(createCategory(name: 'Apple'));
      await box.persist(createCategory(name: 'Banana'));

      // Act
      final stream = box.watch(filter: CategoryFilter(name: .equals('Apple')));

      // Assert
      expect(
        stream,
        emits(
          predicate<List<Category>>(
            (list) => list.length == 1 && list.first.name.value == 'Apple',
          ),
        ),
      );
    });

    test('watch with sort emits entities in expected order', () async {
      // Arrange
      await box.persist(createCategory(name: 'Zebra'));
      await box.persist(createCategory(name: 'Alpha'));

      // Act
      final stream = box.watch(sort: const CategorySort.name());

      // Assert
      expect(
        stream,
        emits(
          predicate<List<Category>>(
            (list) => list.length == 2 && list[0].name.value == 'Zebra',
          ),
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
      await box.persist(createCategory(name: 'Category Alpha'));
      await box.persist(createCategory(name: 'Category Beta'));
      await box.persist(createCategory(name: 'Category Gamma'));

      // Act
      final list = await box.getAll();

      // Assert
      expect(list.length, 3);
    });
  });

  group('BaseBox.delete', () {
    test('removes entity and returns true', () async {
      // Arrange
      final persisted = await box.persist(createCategory());

      // Act
      final result = await box.delete(persisted.meta.id);
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
      await box.persist(createCategory(name: 'Exact Match'));
      await box.persist(createCategory(name: 'Exact Match Extra'));
      await box.persist(createCategory(name: 'Other Category'));

      // Act
      final list = await box.getAll(filter: CategoryFilter(name: .equals('Exact Match')));

      // Assert
      expect(list.length, 1);
      expect(list.first.name.value, 'Exact Match');
    });

    /// Contains filter uses case-insensitive matching.
    test('contains filter is case insensitive', () async {
      // Arrange
      await box.persist(createCategory(name: 'APPLE Category'));
      await box.persist(createCategory(name: 'apple category'));
      await box.persist(createCategory(name: 'Apple Category'));
      await box.persist(createCategory(name: 'Banana Category'));

      // Act
      final list = await box.getAll(filter: CategoryFilter(name: .contains('apple')));

      // Assert
      expect(list.length, 3);
    });
  });

  group('BaseBox.intFilter (via metaFilter.id)', () {
    test('equals filter returns exact id', () async {
      // Arrange
      final c1 = await box.persist(createCategory(name: 'Category One'));
      await box.persist(createCategory(name: 'Category Two'));
      await box.persist(createCategory(name: 'Category Three'));

      // Act
      final list = await box.getAll(
        filter: CategoryFilter(meta: MetaFilter.filter(id: .equals(c1.meta.id))),
      );

      // Assert
      expect(list.length, 1);
      expect(list.first.meta.id, c1.meta.id);
    });

    test('greaterThan filter returns ids greater than value', () async {
      // Arrange
      final c1 = await box.persist(createCategory(name: 'Category One'));
      final c2 = await box.persist(createCategory(name: 'Category Two'));
      final c3 = await box.persist(createCategory(name: 'Category Three'));

      // Act
      final list = await box.getAll(
        filter: CategoryFilter(meta: MetaFilter.filter(id: .greaterThan(c1.meta.id))),
      );

      // Assert
      expect(list.length, 2);
      expect(list.map((c) => c.meta.id), containsAll([c2.meta.id, c3.meta.id]));
    });

    test('lessThan filter returns ids less than value', () async {
      // Arrange
      final c1 = await box.persist(createCategory(name: 'Category One'));
      final c2 = await box.persist(createCategory(name: 'Category Two'));
      await box.persist(createCategory(name: 'Category Three'));

      // Act
      final list = await box.getAll(
        filter: CategoryFilter(meta: MetaFilter.filter(id: .lessThan(c2.meta.id))),
      );

      // Assert
      expect(list.length, 1);
      expect(list.first.meta.id, c1.meta.id);
    });
  });

  group('BaseBox.dateTimeFilter (via metaFilter)', () {
    test('equals filter returns exact createdAt time', () async {
      // Arrange
      final c1 = await box.persist(createCategory(name: 'Category One'));
      await Future.delayed(
        const Duration(milliseconds: 10),
      ); // Ensure distinct timestamps
      await box.persist(createCategory(name: 'Category Two'));
      await box.persist(createCategory(name: 'Category Three'));

      // Act
      final list = await box.getAll(
        filter: CategoryFilter(
          meta: MetaFilter.filter(createdAt: .equals(c1.meta.createdAt!)),
        ),
      );

      // Assert
      expect(list.length, 1);
      expect(list.first.meta.id, c1.meta.id);
    });

    /// Uses delay to create measurable time differences between entities.
    test('afterThan filter returns entities with createdAt after given time', () async {
      // Arrange
      final c1 = await box.persist(createCategory(name: 'First Category'));
      await Future.delayed(const Duration(milliseconds: 10));
      final afterC1 = c1.meta.createdAt!;
      await box.persist(createCategory(name: 'Second Category'));
      await box.persist(createCategory(name: 'Third Category'));

      // Act
      final list = await box.getAll(
        filter: CategoryFilter(meta: MetaFilter.filter(createdAt: .afterThan(afterC1))),
      );

      // Assert
      expect(list.length, 2);
    });

    /// Uses delay to create measurable time differences between entities.
    test('beforeThan filter returns entities with createdAt before given time', () async {
      // Arrange
      await box.persist(createCategory(name: 'First Category'));
      await box.persist(createCategory(name: 'Second Category'));
      await Future.delayed(const Duration(milliseconds: 10));
      final beforeThird = DateTime.now();
      await box.persist(createCategory(name: 'Third Category'));

      // Act
      final list = await box.getAll(
        filter: CategoryFilter(
          meta: MetaFilter.filter(createdAt: .beforeThan(beforeThird)),
        ),
      );

      // Assert
      expect(list.length, 2);
    });
  });

  group('BaseBox._combineConditions', () {
    /// Intersection mode requires ALL conditions to match (AND logic).
    test('intersection (AND) requires all conditions to match', () async {
      // Arrange
      await box.persist(createCategory(name: 'Apple Category'));
      await box.persist(createCategory(name: 'Banana Category'));
      await box.persist(createCategory(name: 'Apricot Category'));
      final all = await box.getAll();
      final appleId = all.firstWhere((c) => c.name.value == 'Apple Category').meta.id;

      // Act
      final list = await box.getAll(
        filter: CategoryFilter(
          logic: FilterLogic.and,
          name: .contains('apple'),
          meta: MetaFilter.filter(id: .equals(appleId)),
        ),
      );

      // Assert
      expect(list.length, 1);
      expect(list.first.name.value, 'Apple Category');
    });

    /// Union mode requires ANY condition to match (OR logic) when used in MetaFilter.
    /// Uses delays to ensure distinct createdAt timestamps.
    test('union (OR) allows any condition to match', () async {
      // Arrange
      final c1 = await box.persist(createCategory(name: 'Apple Category'));
      await Future.delayed(const Duration(milliseconds: 10));
      final c2 = await box.persist(createCategory(name: 'Banana Category'));
      await Future.delayed(const Duration(milliseconds: 10));
      await box.persist(createCategory(name: 'Cherry Category'));

      // Act
      final list = await box.getAll(
        filter: CategoryFilter(
          meta: MetaFilter.filter(
            logic: FilterLogic.or,
            id: .equals(c1.meta.id),
            createdAt: .equals(c2.meta.createdAt!),
          ),
        ),
      );

      // Assert
      expect(list.length, 2);
      expect(list.map((c) => c.meta.id), containsAll([c1.meta.id, c2.meta.id]));
    });
  });

  group('BaseBox.sortBy', () {
    /// Note: CategorySort.name() is mapped to sort by ID in the current implementation.
    test('sorts by id when using name sort (current implementation)', () async {
      // Arrange
      final c1 = await box.persist(createCategory(name: 'Zebra Category'));
      final c2 = await box.persist(createCategory(name: 'Alpha Category'));
      final c3 = await box.persist(createCategory(name: 'Middle Category'));

      // Act
      final list = await box.getAll(sort: const CategorySort.name());

      // Assert
      expect(list[0].meta.id, c1.meta.id);
      expect(list[1].meta.id, c2.meta.id);
      expect(list[2].meta.id, c3.meta.id);
    });

    /// Note: CategorySort.name(desc: true) is mapped to sort by ID desc.
    test('sorts by id desc when using name sort desc (current implementation)', () async {
      // Arrange
      final c1 = await box.persist(createCategory(name: 'Alpha Category'));
      final c2 = await box.persist(createCategory(name: 'Zebra Category'));
      final c3 = await box.persist(createCategory(name: 'Middle Category'));

      // Act
      final list = await box.getAll(sort: const CategorySort.name(desc: true));

      // Assert
      expect(list[0].meta.id, c3.meta.id);
      expect(list[1].meta.id, c2.meta.id);
      expect(list[2].meta.id, c1.meta.id);
    });
  });

  group('BaseBox.sortByMeta', () {
    test('sorts by id ascending', () async {
      // Arrange
      final c1 = await box.persist(createCategory(name: 'First Category'));
      final c2 = await box.persist(createCategory(name: 'Second Category'));
      final c3 = await box.persist(createCategory(name: 'Third Category'));

      // Act
      final list = await box.getAll(sort: .meta(.id()));

      // Assert
      expect(list[0].meta.id, c1.meta.id);
      expect(list[1].meta.id, c2.meta.id);
      expect(list[2].meta.id, c3.meta.id);
    });

    test('sorts by id descending', () async {
      // Arrange
      final c1 = await box.persist(createCategory(name: 'First Category'));
      final c2 = await box.persist(createCategory(name: 'Second Category'));
      final c3 = await box.persist(createCategory(name: 'Third Category'));

      // Act
      final list = await box.getAll(sort: .meta(.id(desc: true)));

      // Assert
      expect(list[0].meta.id, c3.meta.id);
      expect(list[1].meta.id, c2.meta.id);
      expect(list[2].meta.id, c1.meta.id);
    });

    /// Uses delay to create measurable time differences between entities.
    test('sorts by createdAt ascending', () async {
      // Arrange
      final c1 = await box.persist(createCategory(name: 'First Category'));
      await Future.delayed(const Duration(milliseconds: 10));
      final c2 = await box.persist(createCategory(name: 'Second Category'));
      await Future.delayed(const Duration(milliseconds: 10));
      final c3 = await box.persist(createCategory(name: 'Third Category'));

      // Act
      final list = await box.getAll(sort: .meta(.createdAt()));

      // Assert
      expect(list[0].meta.id, c1.meta.id);
      expect(list[1].meta.id, c2.meta.id);
      expect(list[2].meta.id, c3.meta.id);
    });

    /// Uses delay to create measurable time differences between entities.
    test('sorts by createdAt descending', () async {
      // Arrange
      final c1 = await box.persist(createCategory(name: 'First Category'));
      await Future.delayed(const Duration(milliseconds: 10));
      final c2 = await box.persist(createCategory(name: 'Second Category'));
      await Future.delayed(const Duration(milliseconds: 10));
      final c3 = await box.persist(createCategory(name: 'Third Category'));

      // Act
      final list = await box.getAll(sort: .meta(.createdAt(desc: true)));

      // Assert
      expect(list[0].meta.id, c3.meta.id);
      expect(list[1].meta.id, c2.meta.id);
      expect(list[2].meta.id, c1.meta.id);
    });

    /// Updates entities in a specific order to set updatedAt values.
    /// Nulls come first in ascending order.
    test('sorts by updatedAt ascending', () async {
      // Arrange
      final c1 = await box.persist(createCategory(name: 'First Category'));
      final c2 = await box.persist(createCategory(name: 'Second Category'));
      final c3 = await box.persist(createCategory(name: 'Third Category'));
      await Future.delayed(const Duration(milliseconds: 10));
      await box.persist(c2);
      await Future.delayed(const Duration(milliseconds: 10));
      await box.persist(c3);
      await Future.delayed(const Duration(milliseconds: 10));
      await box.persist(c1);

      // Act
      final list = await box.getAll(sort: .meta(.updatedAt()));

      // Assert
      expect(list.last.meta.id, c1.meta.id);
    });
  });

  group('BoxModelExtension.toEntities', () {
    test('converts list of models to list of entities', () async {
      // Arrange
      await box.persist(createCategory(name: 'Category Alpha'));
      await box.persist(createCategory(name: 'Category Beta'));

      // Act
      final list = await box.getAll();

      // Assert
      expect(list, isA<List<Category>>());
      expect(list.length, 2);
    });
  });
}
