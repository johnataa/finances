import 'package:finances/core/abstractions/custom_error.dart';
import 'package:finances/core/abstractions/result.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final CustomError errorMock = CustomError(code: "error#code", message: "error message");

  group("Result", () {
    test("Result.success should wrap value correctly", () {
      // Arrange
      DateTime subject = DateTime.now();

      // Act
      final Result<DateTime> result = .success(subject);

      // Assert
      expect(result, isA<Success<DateTime>>());
      result.map(
        success: (s) => expect(s.value, subject),
        failure: (_) => fail('Should be success'),
      );
    });

    test("Result.failure should wrap error correctly", () {
      // Arrange
      const CustomError error = CustomError(code: "error#code", message: "error message");

      // Act
      Result<DateTime> result = .failure(error);

      // Assert
      expect(result, isA<Failure<DateTime>>());
      result.map(
        success: (_) => fail('Should be failure'),
        failure: (f) {
          expect(f.error, error);
          expect(f.error.code, "error#code");
          expect(f.error.message, "error message");
        },
      );
    });

    test("getOrNull should return value on success and null on failure", () {
      // Arrange
      final Result success = .success('ok');
      final Result failure = .failure(errorMock);

      // Act & Assert
      expect(success.getOrNull(), 'ok');
      expect(failure.getOrNull(), isNull);
    });

    test("getOrThrow should return value on success and throw on failure", () {
      // Arrange
      final Result success = .success('ok');
      final Result failure = .failure(errorMock);

      // Act & Assert
      expect(success.getOrThrow(), 'ok');
      expect(() => failure.getOrThrow(), throwsA(errorMock));
    });

    test("getOrDefault should return value on success and default on failure", () {
      // Arrange
      final Result<String> success = .success('ok');
      final Result<String> failure = .failure(errorMock);

      // Act & Assert
      expect(success.getOrDefault('default'), 'ok');
      expect(failure.getOrDefault('default'), 'default');
    });

    test("map should execute correct callback", () {
      // Arrange
      final Result<int> success = .success(42);
      final Result<int> failure = .failure(errorMock);

      // Act
      final successMapped = success.map(
        success: (s) => s.value * 2,
        failure: (f) => fail("Should not be failure"),
      );

      final failureMapped = failure.map(
        success: (s) => fail("Should not be success"),
        failure: (f) => f.error.code,
      );

      // Assert
      expect(successMapped, 84);
      expect(failureMapped, "error#code");
    });
  });
}
