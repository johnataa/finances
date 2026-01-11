import 'package:finances/shared/value_objects/frequency/errors.dart';
import 'package:finances/shared/value_objects/frequency/frequency.dart';
import 'package:finances/shared/value_objects/frequency/frequency_unit.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test_many.dart';
import 'error_code_test.dart';

void main() {
  group("Invalid frequency values", () {
    testMany(
      "Should be invalid when value is lesser than one.",
      params: combine([0, -1], FrequencyUnit.values),
      test: (params) {
        // Arrange
        final (invalidValue, unit) = params;

        // Act
        final Frequency frequency = .every(invalidValue, unit);

        // Expectations
        expect(frequency.hasError, true);
        expect(frequency.value, invalidValue);
        expect(frequency.error, TypeMatcher<InvalidFrequencyValueError>());
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
        Frequency frequency = .every(validValue, unit);

        // Expectations
        expect(frequency.hasError, false);
        expect(frequency.value, validValue);
        expect(() => frequency.error, throwsA(TypeMatcher<TypeError>()));
      },
    );
  });

  group("Operator ==", () {
    test("Should be equal when value and unit are equal.", () {
      // Arrange
      Frequency firstFrequency = Frequency.every(2, FrequencyUnit.month);
      Frequency secondFrequency = Frequency.every(2, FrequencyUnit.month);

      // Act
      bool result = firstFrequency == secondFrequency;

      // Assert
      expect(result, true);
    });

    test("Should not be equal when frequency units are different.", () {
      // Arrange
      Frequency firstFrequency = Frequency.every(1, FrequencyUnit.day);
      Frequency secondFrequency = Frequency.every(1, FrequencyUnit.week);

      // Act
      bool result = firstFrequency == secondFrequency;

      // Assert
      expect(result, false);
    });
  });

  group("toString() method", () {
    testMany(
      "Should match the pattern 'Every unit' when value is 1.",
      params: FrequencyUnit.values,
      test: (unit) {
        // Act
        Frequency frequency = .every(1, unit);

        // Assert
        expect(frequency.value, equals(1));
        expect(frequency.toString(), equals("Every ${frequency.unit.name}"));
      },
    );

    testMany(
      "Should match the pattern 'Every N units' when value is greater than 1.",
      params: combine([2, 9999], FrequencyUnit.values),
      test: (params) {
        // Arrange
        final (value, unit) = params;

        // Act
        final Frequency frequency = .every(value, unit);

        // Assert
        expect(frequency.value, greaterThan(1));
        expect("$frequency", equals("Every ${frequency.value} ${frequency.unit.name}s"));
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
