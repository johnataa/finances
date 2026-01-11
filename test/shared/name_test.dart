import 'package:finances/shared/value_objects/name/errors.dart';
import 'package:finances/shared/value_objects/name/name.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test_many.dart';
import 'error_code_test.dart';

void main() {
  const minLength = Name.minLength;
  const maxLength = Name.maxLength;

  group("Invalid name length", () {
    test("Should be an invalid name when name length is less than $minLength.", () {
      // Arrange
      int length = minLength - 1;

      // Act
      Name name = Name('A' * length);

      // Assert
      expect(name.hasError, true);
      expect(name.value.length, lessThanOrEqualTo(minLength));
      expect(name.error, TypeMatcher<InvalidNameLengthError>());
    });

    test("Should be an invalid name when name length is more than $maxLength.", () {
      // Arrange
      int length = maxLength + 1;

      // Act
      Name name = Name('A' * length);

      // Assert
      expect(name.hasError, true);
      expect(name.value.length, greaterThanOrEqualTo(maxLength));
      expect(name.error, TypeMatcher<InvalidNameLengthError>());
    });
  });

  group("Valid name length", () {
    testMany(
      "Should be valid when name length is greater than or equal to $minLength.",
      params: [minLength, minLength + 1],
      test: (length) {
        // Act
        Name name = Name("A" * length);

        // Assert
        expect(name.hasError, false);
        expect(name.value.length, greaterThanOrEqualTo(minLength));
        expect(() => name.error, throwsA(TypeMatcher<TypeError>()));
      },
    );

    testMany(
      "Should be valid when name length is lesser than or equal to $maxLength.",
      params: [maxLength - 1, maxLength],
      test: (length) {
        // Act
        Name name = Name("A" * length);

        // Assert
        expect(name.hasError, false);
        expect(name.value.length, lessThanOrEqualTo(maxLength));
        expect(() => name.error, throwsA(TypeMatcher<TypeError>()));
      },
    );
  });

  testErrorCodes({InvalidNameLengthError(): "NameError#001"});
}
