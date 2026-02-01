import 'package:finances/features/shared/filter.dart';
import 'package:finances/features/shared/meta/meta_filter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MetaFilter', () {
    test('defaults to union type', () {
      // Arrange & Act
      const filter = MetaFilter.empty;

      // Assert
      expect(filter.type, FilterType.union);
    });

    test('stores id filter correctly', () {
      // Arrange
      const int input = 1;

      // Act
      const filter = MetaFilter.filter(id: .equals(input));

      // Assert
      expect(filter.id, isNotNull);
      expect(
        filter.id!.map(
          equals: (f) => f.input,
          greaterThan: (_) => null,
          lessThan: (_) => null,
        ),
        input,
      );
    });

    test('stores createdAt filter correctly', () {
      // Arrange
      final DateTime input = DateTime.now();

      // Act
      final filter = MetaFilter.filter(createdAt: .equals(input));

      // Assert
      expect(filter.createdAt, isNotNull);
      expect(
        filter.createdAt!.map(
          equals: (f) => f.input,
          beforeThan: (_) => null,
          afterThan: (_) => null,
        ),
        input,
      );
    });

    test('stores updatedAt filter correctly', () {
      // Arrange
      final DateTime input = DateTime.now();

      // Act
      final filter = MetaFilter.filter(updatedAt: .equals(input));

      // Assert
      expect(filter.updatedAt, isNotNull);
      expect(
        filter.updatedAt!.map(
          equals: (f) => f.input,
          beforeThan: (_) => null,
          afterThan: (_) => null,
        ),
        input,
      );
    });

    test('stores type correctly', () {
      // Arrange
      const FilterType input = FilterType.intersection;

      // Act
      const filter = MetaFilter.filter(type: input);

      // Assert
      expect(filter.type, input);
    });
  });

  group('MetaSort', () {
    test('defaultSort is updatedAt desc', () {
      // Assert
      expect(MetaSort.defaultSort, const MetaSort.updatedAt(desc: true));
    });

    test('id sort defaults to asc', () {
      // Act
      const sort = MetaSort.id();

      // Assert
      expect(sort.desc, false);
    });

    test('createdAt sort defaults to asc', () {
      // Act
      const sort = MetaSort.createdAt();

      // Assert
      expect(sort.desc, false);
    });

    test('updatedAt sort defaults to asc', () {
      // Act
      const sort = MetaSort.updatedAt();

      // Assert
      expect(sort.desc, false);
    });

    test('id sort stores desc correctly', () {
      // Act
      const sort = MetaSort.id(desc: true);

      // Assert
      expect(sort.desc, true);
    });
  });
}
