import 'package:finances/features/shared/base_account/category/category.dart';
import 'package:finances/features/shared/base_account/category/category_filter.dart';
import 'package:finances/features/shared/meta/meta.dart';
import 'package:finances/features/shared/meta/meta_filter.dart';
import 'package:finances/features/shared/name/name.dart';
import 'package:finances/infra/data/objectbox/boxes/category/category_box.dart';
import 'package:finances/infra/data/objectbox/gen/objectbox.g.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../mocks/store_mock.dart';

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

  Category createCategory({
    int id = 0,
    String name = 'Test Category',
    DateTime? createdAt,
    DateTime? updatedAt,
  }) => Category(
    meta: Meta(id: id, createdAt: createdAt, updatedAt: updatedAt),
    name: Name.create(name),
    icon: 'icon',
    color: 'color',
  );

  group('CategoryBox', () {
    test('persist saves a category and assigns an ID', () async {
      // Arrange
      final category = createCategory();

      // Act
      final persisted = await box.persist(category);

      // Assert
      expect(persisted.meta.id, isNot(0));
      expect(persisted.name.value, category.name.value);
    });

    test('getStream returns all categories', () async {
      // Arrange
      final c1 = await box.persist(createCategory(name: 'C1w'));
      final c2 = await box.persist(createCategory(name: 'C2w'));

      // Act
      final stream = box.getStream();

      // Assert
      expect(
        stream,
        emits(
          predicate<List<Category>>(
            (list) =>
                list.any((c) => c.meta.id == c1.meta.id) &&
                list.any((c) => c.meta.id == c2.meta.id),
          ),
        ),
      );
    });

    test('getAll returns all categories', () async {
      // Arrange
      final c1 = await box.persist(createCategory(name: 'C1w'));
      final c2 = await box.persist(createCategory(name: 'C2w'));

      // Act
      final list = await box.getAll();

      // Assert
      expect(list.length, 2);
      expect(list.any((c) => c.meta.id == c1.meta.id), true);
      expect(list.any((c) => c.meta.id == c2.meta.id), true);
    });

    test('delete removes a category', () async {
      // Arrange
      final c1 = await box.persist(createCategory());

      // Act
      await box.delete(c1.meta.id);
      final list = await box.getAll();

      // Assert
      expect(list.isEmpty, true);
    });

    group('filtering', () {
      test('filters by name equals', () async {
        // Arrange
        await box.persist(createCategory(name: 'Apple'));
        await box.persist(createCategory(name: 'Banana'));

        // Act
        final list = await box.getAll(filter: CategoryFilter(name: .equals('Apple')));

        // Assert
        expect(list.length, 1);
        expect(list.first.name.value, 'Apple');
      });

      test('filters by name contains', () async {
        // Arrange
        await box.persist(createCategory(name: 'Apple'));
        await box.persist(createCategory(name: 'Pineapple'));
        await box.persist(createCategory(name: 'Banana'));

        // Act
        final list = await box.getAll(filter: CategoryFilter(name: .contains('apple')));

        // Assert
        expect(list.length, 2);
      });

      test('filters by meta id', () async {
        // Arrange
        final c1 = await box.persist(createCategory());
        await box.persist(createCategory());

        // Act
        final list = await box.getAll(
          filter: CategoryFilter(meta: MetaFilter.filter(id: .equals(c1.meta.id))),
        );

        // Assert
        expect(list.length, 1);
        expect(list.first.meta.id, c1.meta.id);
      });

      test('filters by meta createdAt', () async {
        // Arrange
        final date = DateTime(2023, 1, 1);
        await box.persist(createCategory(createdAt: date));
        await box.persist(createCategory(createdAt: date.add(const Duration(days: 1))));

        // Act
        final list = await box.getAll(
          filter: CategoryFilter(meta: MetaFilter.filter(createdAt: .equals(date))),
        );

        // Assert
        expect(list.length, 1);
        expect(list.first.meta.createdAt, date);
      });
    });

    group('sorting', () {
      test('sorts by name asc', () async {
        // Arrange
        await box.persist(createCategory(name: 'Bwe'));
        await box.persist(createCategory(name: 'Awe'));

        // Act
        final list = await box.getAll(sort: const CategorySort.name());

        // Assert
        expect(list[0].name.value, 'Awe');
        expect(list[1].name.value, 'Bwe');
      });

      test('sorts by name desc', () async {
        // Arrange
        await box.persist(createCategory(name: 'Awe'));
        await box.persist(createCategory(name: 'Bwe'));

        // Act
        final list = await box.getAll(sort: const CategorySort.name(desc: true));

        // Assert
        expect(list[0].name.value, 'Bwe');
        expect(list[1].name.value, 'Awe');
      });

      test('sorts by meta createdAt desc', () async {
        // Arrange
        final date1 = DateTime(2023, 1, 1);
        final date2 = DateTime(2023, 1, 2);
        await box.persist(createCategory(createdAt: date1));
        await box.persist(createCategory(createdAt: date2));

        // Act
        final list = await box.getAll(sort: .meta(.createdAt(desc: true)));

        // Assert
        expect(list[0].meta.createdAt, date2);
        expect(list[1].meta.createdAt, date1);
      });
    });
  });
}
