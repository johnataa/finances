import 'package:finances/features/category/category.dart';
import 'package:finances/features/category/category.query.dart';
import 'package:finances/infra/data/objectbox/boxes/category_box.dart';
import 'package:finances/infra/data/objectbox/boxes/category_box.mapper.dart';
import 'package:finances/infra/data/objectbox/gen/objectbox.g.dart';
import 'package:finances/shared/abstractions/order_by.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../mocks/infra/data/objectbox/store_mock.dart';

/// Tests for CategoryBox-specific functionality.
/// Shared BaseBox logic is tested in base_box_test.dart.
void main() {
  late Store store;
  late CategoryBox box;

  setUp(() async {
    store = await openInMemoryStore();
    box = CategoryBox(store, CategoryBoxMapper());
  });

  tearDown(() {
    store.close();
  });

  Category createCategory({int id = 0, String name = 'Test Category'}) => Category(
    base: .create(id: id),
    name: .create(name),
    icon: 'icon',
    color: 'color',
  );

  group('CategoryBox.persist', () {
    /// Verifies persist returns entity with ID, createdAt, and updatedAt from model.
    test('returns entity with meta populated from persisted model', () async {
      // Arrange
      final category = createCategory();

      // Act
      final persisted = await box.persist(category);

      // Assert
      expect(persisted, isNotNull);
      expect(persisted?.base.id, isNot(0));
      expect(persisted?.base.createdAt, isNotNull);
      expect(persisted?.base.updatedAt, isNull);
      expect(persisted?.name.value, category.name.value);
      expect(persisted?.icon, category.icon);
      expect(persisted?.color, category.color);
    });
  });

  group('CategoryBox.queryBuilder', () {
    /// Verifies that the name field is correctly mapped to the filter.
    test('filters by name field', () async {
      // Arrange
      await box.persist(createCategory(name: 'Apple'));
      await box.persist(createCategory(name: 'Banana'));

      // Act
      final list = await box.getAll(filter: .by(name: .equals('Apple')));

      // Assert
      expect(list.length, 1);
      expect(list.first.name.value, 'Apple');
    });

    /// Verifies that CategoryField.name correctly triggers ordering.
    test('orders by name option', () async {
      // Arrange
      final c1 = await box.persist(createCategory(name: 'Zebra'));
      final c2 = await box.persist(createCategory(name: 'Alpha'));
      expect(c1, isNotNull);
      expect(c2, isNotNull);

      // Act
      final list = await box.getAll(orderBy: CategoryField.name.asc);

      // Assert
      expect(list[0].base.id, c2?.base.id);
      expect(list[1].base.id, c1?.base.id);
    });
  });
}
