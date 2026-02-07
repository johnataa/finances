import 'package:finances/features/shared/base_account/category/category.dart';
import 'package:finances/features/shared/base_account/category/category_filter.dart';
import 'package:finances/features/shared/meta/meta.dart';
import 'package:finances/features/shared/name/name.dart';
import 'package:finances/infra/data/objectbox/boxes/category/category_box.dart';
import 'package:finances/infra/data/objectbox/gen/objectbox.g.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../mocks/store_mock.dart';

/// Tests for CategoryBox-specific functionality.
/// Shared BaseBox logic is tested in base_box_test.dart.
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

  group('CategoryBox.persist', () {
    /// Verifies persist returns entity with ID, createdAt, and updatedAt from model.
    test('returns entity with meta populated from persisted model', () async {
      // Arrange
      final category = createCategory();

      // Act
      final persisted = await box.persist(category);

      // Assert
      expect(persisted.meta.id, isNot(0));
      expect(persisted.meta.createdAt, isNotNull);
      expect(persisted.name.value, category.name.value);
      expect(persisted.icon, category.icon);
      expect(persisted.color, category.color);
    });

    /// Verifies that persist updates the existing entity meta on subsequent calls.
    test('updates meta on existing entity', () async {
      // Arrange
      final category = createCategory();
      final persisted = await box.persist(category);

      // Act
      final updated = await box.persist(persisted);

      // Assert
      expect(updated.meta.id, persisted.meta.id);
      expect(updated.meta.createdAt, persisted.meta.createdAt);
      expect(updated.meta.updatedAt, isNotNull);
    });
  });

  group('CategoryBox.queryBuilder', () {
    /// Verifies that the name field is correctly mapped to the filter.
    test('filters by name field', () async {
      // Arrange
      await box.persist(createCategory(name: 'Apple'));
      await box.persist(createCategory(name: 'Banana'));

      // Act
      final list = await box.getAll(filter: CategoryFilter(name: .equals('Apple')));

      // Assert
      expect(list.length, 1);
      expect(list.first.name.value, 'Apple');
    });

    /// Verifies that CategorySort.name() correctly triggers sorting.
    test('sorts by name sort option', () async {
      // Arrange
      final c1 = await box.persist(createCategory(name: 'Zebra'));
      final c2 = await box.persist(createCategory(name: 'Alpha'));

      // Act
      final list = await box.getAll(sort: const CategorySort.name());

      // Assert
      expect(list[0].meta.id, c1.meta.id);
      expect(list[1].meta.id, c2.meta.id);
    });

    /// Verifies that CategorySort.meta() correctly delegates to sortByMeta.
    test('sorts by meta sort option', () async {
      // Arrange
      final c1 = await box.persist(createCategory(name: 'First'));
      await Future.delayed(const Duration(milliseconds: 10));
      final c2 = await box.persist(createCategory(name: 'Second'));

      // Act
      final list = await box.getAll(sort: .meta(.createdAt(desc: true)));

      // Assert
      expect(list[0].meta.id, c2.meta.id);
      expect(list[1].meta.id, c1.meta.id);
    });
  });
}
