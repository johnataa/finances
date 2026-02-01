import 'package:finances/features/shared/base_account/category/category_filter.dart';
import 'package:finances/features/shared/filter.dart';
import 'package:finances/features/shared/meta/meta_filter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CategoryFilter', () {
    test('defaults to union type', () {
      // Arrange & Act
      const filter = CategoryFilter();

      // Assert
      expect(filter.type, FilterType.union);
    });

    test('stores name filter correctly', () {
      // Arrange
      const String input = 'test';

      // Act
      const filter = CategoryFilter(name: .equals(input));

      // Assert
      expect(filter.name, isNotNull);
      expect(filter.name!.map(equals: (f) => f.input, contains: (_) => null), input);
    });

    test('stores meta filter correctly', () {
      // Arrange
      const metaFilter = MetaFilter.empty;

      // Act
      const filter = CategoryFilter(meta: metaFilter);

      // Assert
      expect(filter.meta, metaFilter);
    });
  });

  group('CategorySort', () {
    test('defaultSort is meta defaultSort', () {
      // Assert
      expect(CategorySort.defaultSort, const CategorySort.meta(.defaultSort));
    });

    test('name sort defaults to asc', () {
      // Act
      const sort = CategorySort.name();

      // Assert
      sort.map(name: (s) => expect(s.desc, false), meta: (_) => fail('Should be name'));
    });

    test('name sort stores desc correctly', () {
      // Act
      const sort = CategorySort.name(desc: true);

      // Assert
      sort.map(name: (s) => expect(s.desc, true), meta: (_) => fail('Should be name'));
    });

    test('meta sort stores metaSort correctly', () {
      // Arrange
      const metaSort = MetaSort.createdAt(desc: true);

      // Act
      const sort = CategorySort.meta(metaSort);

      // Assert
      sort.map(
        name: (_) => fail('Should be meta'),
        meta: (s) => expect(s.metaSort, metaSort),
      );
    });
  });
}
