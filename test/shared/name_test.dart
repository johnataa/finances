import 'package:finances/shared/value_objects/name/errors.dart';
import 'package:finances/shared/value_objects/name/name.dart';
import 'package:flutter_test/flutter_test.dart';

import 'error_code_test.dart';

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

  testErrorCodes({InvalidNameLengthError(): "NameError#001"});
}
