import 'package:finances/shared/abstractions/filter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Filter', () {
    test('.equals stores correct value', () {
      // Arrange
      const String input = 'test';

      // Act
      const filter = StringFilter.equals(input);

      // Assert
      expect(filter, isA<StringFilter>());
      filter.map(
        equals: (f) => expect(f.input, input),
        contains: (_) => fail('Should be equals'),
      );
    });

    test('.contains stores correct value', () {
      // Arrange
      const String input = 'test';

      // Act
      const filter = StringFilter.contains(input);

      // Assert
      expect(filter, isA<StringFilter>());
      filter.map(
        equals: (_) => fail('Should be contains'),
        contains: (f) => expect(f.input, input),
      );
    });

    test('.equals stores correct value', () {
      // Arrange
      const int input = 10;

      // Act
      const filter = IntFilter.equals(input);

      // Assert
      expect(filter, isA<IntFilter>());
      filter.map(
        equals: (f) => expect(f.input, input),
        greaterThan: (_) => fail('Should be equals'),
        lessThan: (_) => fail('Should be equals'),
      );
    });

    test('.greaterThan stores correct value', () {
      // Arrange
      const int input = 10;

      // Act
      const filter = IntFilter.greaterThan(input);

      // Assert
      expect(filter, isA<IntFilter>());
      filter.map(
        equals: (_) => fail('Should be greaterThan'),
        greaterThan: (f) => expect(f.input, input),
        lessThan: (_) => fail('Should be greaterThan'),
      );
    });

    test('.lessThan stores correct value', () {
      // Arrange
      const int input = 10;

      // Act
      const filter = IntFilter.lessThan(input);

      // Assert
      expect(filter, isA<IntFilter>());
      filter.map(
        equals: (_) => fail('Should be lessThan'),
        greaterThan: (_) => fail('Should be lessThan'),
        lessThan: (f) => expect(f.input, input),
      );
    });

    test('.equals stores correct value', () {
      // Arrange
      final input = DateTime(2023, 1, 1);

      // Act
      final filter = DateTimeFilter.equals(input);

      // Assert
      expect(filter, isA<DateTimeFilter>());
      filter.map(
        equals: (f) => expect(f.input, input),
        beforeThan: (_) => fail('Should be equals'),
        afterThan: (_) => fail('Should be equals'),
      );
    });

    test('.beforeThan stores correct value', () {
      // Arrange
      final input = DateTime(2023, 1, 1);

      // Act
      final filter = DateTimeFilter.beforeThan(input);

      // Assert
      expect(filter, isA<DateTimeFilter>());
      filter.map(
        equals: (_) => fail('Should be beforeThan'),
        beforeThan: (f) => expect(f.input, input),
        afterThan: (_) => fail('Should be beforeThan'),
      );
    });

    test('.afterThan stores correct value', () {
      // Arrange
      final input = DateTime(2023, 1, 1);

      // Act
      final filter = DateTimeFilter.afterThan(input);

      // Assert
      expect(filter, isA<DateTimeFilter>());
      filter.map(
        equals: (_) => fail('Should be afterThan'),
        beforeThan: (_) => fail('Should be afterThan'),
        afterThan: (f) => expect(f.input, input),
      );
    });
  });
}
