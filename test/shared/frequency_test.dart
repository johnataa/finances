import 'package:finances/shared/frequency/errors.dart';
import 'package:finances/shared/frequency/frequency.dart';
import 'package:finances/shared/frequency/frequency_unit.dart';
import 'package:finances/shared/result.dart';
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
        final result = Frequency.tryCreate(invalidValue, unit);

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
        final result = Frequency.tryCreate(validValue, unit);

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
      final f1 = Frequency.create(2, FrequencyUnit.month);
      final f2 = Frequency.create(2, FrequencyUnit.month);

      // Act & Assert
      expect(f1 == f2, true);
    });

    test("Should not be equal when frequency units are different.", () {
      // Arrange
      final f1 = Frequency.create(1, FrequencyUnit.day);
      final f2 = Frequency.create(1, FrequencyUnit.week);

      // Act & Assert
      expect(f1 == f2, false);
    });
  });

  group("toString() method", () {
    testMany(
      "Should match the pattern 'Every unit' when value is 1.",
      params: FrequencyUnit.values,
      test: (unit) {
        // Act
        final result = Frequency.tryCreate(1, unit);

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
        final result = Frequency.tryCreate(value, unit);

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

  group("Frequency.create (throwing)", () {
    test("Should return Frequency when valid.", () {
      final frequency = Frequency.create(2, FrequencyUnit.month);
      expect(frequency.value, 2);
      expect(frequency.unit, FrequencyUnit.month);
    });

    test("Should throw when invalid.", () {
      expect(
        () => Frequency.create(0, FrequencyUnit.day),
        throwsA(isA<InvalidFrequencyValueError>()),
      );
    });
  });

  testErrorCodes({InvalidFrequencyValueError(): "FrequencyError#001"});
}
