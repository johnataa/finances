import 'package:flutter_test/flutter_test.dart';

import '../mocks/error_mock.dart';
import '../mocks/value_object_mock.dart';

void main() {
  group("ValueObject", () {
    test("Should has an error when int value is negative.", () {
      // Arrange
      int valueUnderTest = -2;

      // Act
      ValueObjectMock<int> result = ValueObjectMock(
        value: valueUnderTest,
        isValidWhen: [valueUnderTest > 0],
      );

      // Assert
      expect(result.hasError, true);
      expect(result.value, valueUnderTest);
      expect(result.error, ErrorMock.defaultInstance);
    });

    test("Should has an error when any validation is triggered.", () {
      // Arrange
      String valueUnderTest = "this string ends with :)";

      // Act
      ValueObjectMock<String> result = ValueObjectMock(
        value: valueUnderTest,
        isValidWhen: [valueUnderTest.isNotEmpty, !valueUnderTest.contains(':)')],
      );

      // Assert
      expect(result.hasError, true);
      expect(result.value, valueUnderTest);
      expect(result.error, ErrorMock.defaultInstance);
    });

    test("Should be equal another ValueObject when their values are equal.", () {
      // Arrange
      ValueObjectMock<int> firstInstance = ValueObjectMock(value: 10, isValidWhen: []);
      ValueObjectMock<int> secondInstance = ValueObjectMock(value: 10, isValidWhen: []);

      // Act
      bool result = firstInstance == secondInstance;

      // Assert
      expect(result, true);
    });

    test("Should call the value toString() when the instance one is called.", () {
      // Arrange
      ValueObjectMock<int> valueObject = ValueObjectMock(value: 10, isValidWhen: []);

      // Act
      String result = "$valueObject";

      // Assert
      expect(result, "${valueObject.value}");
    });
  });
}
