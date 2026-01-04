import 'package:finances/shared/result.dart';
import 'package:flutter_test/flutter_test.dart';

import '../mocks/error_mock.dart';

void main() {
  group("Result", () {
    test("Should be successful when subject is not null and error is null", () {
      // Arrange
      DateTime subject = DateTime.now();

      // Act
      Result<DateTime> result = Result.success(subject);

      // Asserts
      expect(result.isSuccess, true);
      expect(result.subject, subject);
      expect(() => result.error, throwsA(TypeMatcher<TypeError>()));
    });

    test("Should be a failure when subject is null and error is not null", () {
      // Arrange
      final ErrorMock error = const ErrorMock("error#code", "error message");

      // Act
      Result<DateTime> result = Result.failure(error);

      // Asserts
      expect(result.isSuccess, false);
      expect(result.error, error);
      expect(result.error.code, "error#code");
      expect(result.error.message, "error message");
      expect(() => result.subject, throwsA(TypeMatcher<TypeError>()));
    });
  });
}
