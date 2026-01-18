import 'package:finances/features/shared/frequency/errors.dart';
import 'package:finances/features/shared/frequency/frequency.dart';
import 'package:finances/features/shared/frequency/frequency_unit.dart';
import 'package:finances/features/shared/result.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test_many.dart';
import 'test_error_codes.dart';

void main() {
  group("Invalid frequency values", () {
    testMany(
      "Should be invalid when value is lesser than one.",
      params: combine([0, -1], FrequencyUnit.values),
      test: (params) {
        // Arrange
        final (invalidValue, unit) = params;

        // Act
        final result = Frequency.create(invalidValue, unit);

        // Expectations
        expect(result, isA<Failure<Frequency>>());
        result.map(
          success: (_) => fail('Should be a failure'),
          failure: (f) {
            expect(f.error, isA<InvalidFrequencyValueError>());
          },
        );
      },
    );
  });

  group("Valid frequency values", () {
    testMany(
      "Should be valid when value is greater than zero.",
      params: combine([1, 9999], FrequencyUnit.values),
      test: (params) {
        // Arrange
        final (validValue, unit) = params;

        // Act
        final result = Frequency.create(validValue, unit);

        // Expectations
        expect(result, isA<Success<Frequency>>());
        result.map(
          success: (s) => expect(s.value.value, validValue),
          failure: (_) => fail('Should be a success'),
        );
      },
    );
  });

  group("Operator ==", () {
    test("Should be equal when value and unit are equal.", () {
      // Arrange
      final firstResult = Frequency.create(2, FrequencyUnit.month);
      final secondResult = Frequency.create(2, FrequencyUnit.month);

      // Act & Assert
      // We need to extract the values to compare equality of the Frequency objects
      firstResult.map(
        failure: (_) => fail("First result failed"),
        success: (s1) {
          secondResult.map(
            failure: (_) => fail("Second result failed"),
            success: (s2) {
              expect(s1.value == s2.value, true);
            },
          );
        },
      );
    });

    test("Should not be equal when frequency units are different.", () {
      // Arrange
      final firstResult = Frequency.create(1, FrequencyUnit.day);
      final secondResult = Frequency.create(1, FrequencyUnit.week);

      // Act & Assert
      firstResult.map(
        failure: (_) => fail("First result failed"),
        success: (s1) {
          secondResult.map(
            failure: (_) => fail("Second result failed"),
            success: (s2) {
              expect(s1.value == s2.value, false);
            },
          );
        },
      );
    });
  });

  group("toString() method", () {
    testMany(
      "Should match the pattern 'Every unit' when value is 1.",
      params: FrequencyUnit.values,
      test: (unit) {
        // Act
        final result = Frequency.create(1, unit);

        // Assert
        result.map(
          failure: (_) => fail("Should be success"),
          success: (s) {
            expect(s.value.value, equals(1));
            expect(s.value.toString(), equals("Every ${s.value.unit.name}"));
          },
        );
      },
    );

    testMany(
      "Should match the pattern 'Every N units' when value is greater than 1.",
      params: combine([2, 9999], FrequencyUnit.values),
      test: (params) {
        // Arrange
        final (value, unit) = params;

        // Act
        final result = Frequency.create(value, unit);

        // Assert
        result.map(
          failure: (_) => fail("Should be success"),
          success: (s) {
            expect(s.value.value, greaterThan(1));
            expect("${s.value}", equals("Every ${s.value.value} ${s.value.unit.name}s"));
          },
        );
      },
    );
  });

  group("Static members", () {
    test("Daily frequency should have its value 1 and unit 'day'.", () {
      // Assert
      expect(Frequency.daily.value, 1);
      expect(Frequency.daily.unit, FrequencyUnit.day);
    });

    test("Weekly frequency should have its value 1 and unit 'week'.", () {
      // Assert
      expect(Frequency.weekly.value, 1);
      expect(Frequency.weekly.unit, FrequencyUnit.week);
    });

    test("Monthly frequency should have its value 1 and unit 'month'.", () {
      // Assert
      expect(Frequency.monthly.value, 1);
      expect(Frequency.monthly.unit, FrequencyUnit.month);
    });

    test("Annualy frequency should have its value 1 and unit 'year'.", () {
      // Assert
      expect(Frequency.annualy.value, 1);
      expect(Frequency.annualy.unit, FrequencyUnit.year);
    });
  });

  testErrorCodes({InvalidFrequencyValueError(): "FrequencyError#001"});
}
