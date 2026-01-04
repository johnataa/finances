import 'package:finances/shared/custom_error.dart';
import 'package:finances/shared/value_objects/name/errors.dart';
import 'package:finances/shared/value_objects/name/name.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Invalid name length", () {
    test(
      "Should be an invalid name when name length is less than ${Name.minLength}",
      () {
        // Arrange
        String value = "A" * (Name.minLength - 1);

        // Act
        Name result = Name(value);

        // Asserts
        expect(result.hasError, true);
        expect(result.value, value);
        expect(result.error, TypeMatcher<InvalidNameLengthError>());
      },
    );

    test(
      "Should be an invalid name when name length is more than ${Name.maxLength}",
      () {
        // Arrange
        String value = "A" * (Name.maxLength + 1);

        // Act
        Name result = Name(value);

        // Asserts
        expect(result.hasError, true);
        expect(result.value, value);
        expect(result.error, TypeMatcher<InvalidNameLengthError>());
      },
    );
  });

  group("Valid name length", () {
    const testCases = [Name.minLength, Name.maxLength];

    for (final int length in testCases) {
      test("Should be a valid name when name length is $length", () {
        // Arrange
        String value = "A" * length;

        // Act
        Name result = Name(value);

        // Asserts
        expect(result.hasError, false);
        expect(result.value, value);
        expect(() => result.error, throwsA(TypeMatcher<TypeError>()));
      });
    }
  });

  group("Name errors", () {
    const testCases = {"NameError#001": InvalidNameLengthError()};

    for (final testCase in testCases.entries) {
      String errorName = testCase.value.runtimeType.toString();

      test("$errorName code should be '${testCase.key}'", () {
        // Arrange & Act
        CustomError error = testCase.value;

        // Asserts
        expect(error.code, testCase.key);
      });
    }
  });
}
