import 'package:finances/shared/filter.dart';
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

    test('.string wraps StringFilter correctly', () {
      // Arrange
      const stringFilter = StringFilter.equals('test');

      // Act
      const filter = Filter.string(stringFilter);

      // Assert
      expect(filter, isA<Filter>());
      filter.map(
        string: (f) => expect(f.prop, stringFilter),
        int: (_) => fail('Should be string'),
        dateTime: (_) => fail('Should be string'),
      );
    });

    test('.int wraps IntFilter correctly', () {
      // Arrange
      const intFilter = IntFilter.equals(1);

      // Act
      const filter = Filter.int(intFilter);

      // Assert
      expect(filter, isA<Filter>());
      filter.map(
        string: (_) => fail('Should be int'),
        int: (f) => expect(f.prop, intFilter),
        dateTime: (_) => fail('Should be int'),
      );
    });

    test('.dateTime wraps DateTimeFilter correctly', () {
      // Arrange
      final dateFilter = DateTimeFilter.equals(DateTime.now());

      // Act
      final filter = Filter.dateTime(dateFilter);

      // Assert
      expect(filter, isA<Filter>());
      filter.map(
        string: (_) => fail('Should be dateTime'),
        int: (_) => fail('Should be dateTime'),
        dateTime: (f) => expect(f.prop, dateFilter),
      );
    });
  });
}
