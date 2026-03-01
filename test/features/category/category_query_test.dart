import 'package:finances/features/category/category.query.dart';
import 'package:finances/shared/abstractions/filter.dart';
import 'package:finances/shared/abstractions/order_by.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CategoryFilter', () {
    test('defaults to or logic', () {
      // Arrange & Act
      const CategoryFilter filter = .by();

      // Assert
      expect(filter.logic, FilterLogic.or);
    });

    test('stores name filter correctly', () {
      // Arrange
      const String input = 'test';

      // Act
      const CategoryFilter filter = .by(name: .equals(input));

      // Assert
      expect(filter.name, isNotNull);
      expect(filter.name!.map(equals: (f) => f.input, contains: (_) => null), input);
    });
  });

  group('CategoryField', () {
    test('name order defaults to asc', () {
      // Act
      final order = CategoryField.name.asc;

      // Assert
      expect(order.way, OrderWay.asc);
    });

    test('name order stores desc correctly', () {
      // Act
      final order = CategoryField.name.desc;

      // Assert
      expect(order.way, OrderWay.desc);
    });

    test('createdAt order works properly', () {
      // Act
      final order = CategoryField.createdAt.desc;

      // Assert
      expect(order.way, OrderWay.desc);
    });
  });
}
