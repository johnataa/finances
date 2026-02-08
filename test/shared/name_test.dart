import 'package:finances/shared/name/errors.dart';
import 'package:finances/shared/name/name.dart';
import 'package:finances/shared/result.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test_many.dart';
import 'test_error_codes.dart';

void main() {
  const minLength = Name.minLength;
  const maxLength = Name.maxLength;

  group("Invalid name length", () {
    test("Should be an invalid name when name length is less than $minLength.", () {
      // Arrange
      int length = minLength - 1;

      // Act
      final result = Name.tryCreate('A' * length);

      // Assert
      expect(result, isA<Failure<Name>>());
      result.map(
        success: (_) => fail('Should be a failure'),
        failure: (f) => expect(f.error, isA<InvalidNameLengthError>()),
      );
    });

    test("Should be an invalid name when name length is more than $maxLength.", () {
      // Arrange
      int length = maxLength + 1;

      // Act
      final result = Name.tryCreate('A' * length);

      // Assert
      expect(result, isA<Failure<Name>>());
      result.map(
        success: (_) => fail('Should be a failure'),
        failure: (f) => expect(f.error, isA<InvalidNameLengthError>()),
      );
    });
  });

  group("Valid name length", () {
    testMany(
      "Should be valid when name length is greater than or equal to $minLength.",
      params: [minLength, minLength + 1],
      test: (length) {
        // Act
        final result = Name.tryCreate("A" * length);

        // Assert
        expect(result, isA<Success<Name>>());
        result.map(
          success: (s) => expect(s.value.value.length, greaterThanOrEqualTo(minLength)),
          failure: (_) => fail('Should be a success'),
        );
      },
    );

    testMany(
      "Should be valid when name length is lesser than or equal to $maxLength.",
      params: [maxLength - 1, maxLength],
      test: (length) {
        // Act
        final result = Name.tryCreate("A" * length);

        // Assert
        expect(result, isA<Success<Name>>());
        result.map(
          success: (s) => expect(s.value.value.length, lessThanOrEqualTo(maxLength)),
          failure: (_) => fail('Should be a success'),
        );
      },
    );
  });

  group("Name.create (throwing)", () {
    test("Should return Name when valid.", () {
      final name = Name.create("Valid Name");
      expect(name.value, "Valid Name");
    });

    test("Should throw when invalid.", () {
      expect(() => Name.create("   "), throwsA(isA<EmptyNameError>()));
    });
  });

  testErrorCodes({
    InvalidNameLengthError(minLength, maxLength): "NameError#001",
    EmptyNameError(): "NameError#002",
  });
}
