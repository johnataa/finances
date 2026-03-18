import 'package:finances/core/abstractions/result.dart';
import 'package:finances/features/shared/name/errors.dart';
import 'package:finances/features/shared/name/name.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../core/abstractions/test_error_codes.dart';
import '../../../test_many.dart';

void main() {
  const minLength = Name.minLength;
  const maxLength = Name.maxLength;

  group("Name.tryCreate failure", () {
    test("Should return failure when name length is less than $minLength", () {
      // Arrange
      int length = minLength - 1;

      // Act
      final result = Name.tryCreate('A' * length);

      // Assert
      expect(result, isA<Failure<Name>>());
      result.map(
        success: (_) => fail('Should be failure'),
        failure: (f) => expect(f.error, NameErrors.invalidNameLengthError),
      );
    });

    test("Should return failure when name length is more than $maxLength", () {
      // Arrange
      int length = maxLength + 1;

      // Act
      final result = Name.tryCreate('A' * length);

      // Assert
      expect(result, isA<Failure<Name>>());
      result.map(
        success: (_) => fail('Should be failure'),
        failure: (f) => expect(f.error, NameErrors.invalidNameLengthError),
      );
    });

    test("Should return failure when only whitespace is provided", () {
      // Act
      final result = Name.tryCreate("   ");

      // Assert
      expect(result, isA<Failure<Name>>());
      result.map(
        success: (_) => fail("Should be failure"),
        failure: (f) => expect(f.error, NameErrors.emptyNameError),
      );
    });
  });

  group("Name.tryCreate success", () {
    testMany(
      "Should return success when length is within valid range",
      params: [minLength, minLength + 1, maxLength - 1, maxLength],
      test: (length) {
        // Act
        final result = Name.tryCreate("A" * length);

        // Assert
        expect(result, isA<Success<Name>>());
        result.map(
          success: (s) => expect(s.value.value.length, length),
          failure: (_) => fail('Should be success'),
        );
      },
    );
  });

  group("Name.create (throwing)", () {
    test("Should return Name when valid.", () {
      // Act
      final Name name = .create('Valid Name');

      // Assert
      expect(name.value, "Valid Name");
    });

    test("Should throw when invalid.", () {
      // Act & Assert
      expect(() => Name.create("   "), throwsA(NameErrors.emptyNameError));
    });
  });

  testErrorCodes({
    NameErrors.invalidNameLengthError: "NameError#001",
    NameErrors.emptyNameError: "NameError#002",
  });
}
