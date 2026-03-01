import 'package:finances/shared/abstractions/filter.dart';
import 'package:finances/shared/base/base_filter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('BaseFilter', () {
    test('defaults to or logic', () {
      // Arrange & Act
      const filter = BaseFilter();

      // Assert
      expect(filter.logic, FilterLogic.or);
    });

    test('stores id filter correctly', () {
      // Arrange
      const int input = 1;

      // Act
      const filter = BaseFilter(id: .equals(input));

      // Assert
      expect(filter.id, isNotNull);
      expect(
        filter.id!.map(equals: (f) => f.input, greaterThan: (_) => null, lessThan: (_) => null),
        input,
      );
    });

    test('stores createdAt filter correctly', () {
      // Arrange
      final DateTime input = DateTime.now();

      // Act
      final filter = BaseFilter(createdAt: .equals(input));

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
      final filter = BaseFilter(updatedAt: .equals(input));

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

    test('stores logic correctly', () {
      // Arrange
      const FilterLogic input = FilterLogic.and;

      // Act
      const filter = BaseFilter(logic: input);

      // Assert
      expect(filter.logic, input);
    });
  });
}
