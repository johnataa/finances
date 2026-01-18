import 'package:finances/features/shared/result.dart';
import 'package:flutter_test/flutter_test.dart';

import '../mocks/error_mock.dart';

void main() {
  group("Result", () {
    test("Should be successful when subject is not null and error is null", () {
      // Arrange
      DateTime subject = DateTime.now();

      // Act
      Result<DateTime> result = Result.success(subject);

      // Assert
      expect(result, isA<Success<DateTime>>());
      result.map(
        success: (s) => expect(s.value, subject),
        failure: (_) => fail('Should be a success'),
      );
    });

    test("Should be a failure when subject is null and error is not null", () {
      // Arrange
      const ErrorMock error = ErrorMock("error#code", "error message");

      // Act
      Result<DateTime> result = Result.failure(error);

      // Assert
      expect(result, isA<Failure<DateTime>>());
      result.map(
        success: (_) => fail('Should be a failure'),
        failure: (f) {
          expect(f.error, error);
          expect(f.error.code, "error#code");
          expect(f.error.message, "error message");
        },
      );
    });
  });
}
