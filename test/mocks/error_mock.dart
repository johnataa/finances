import 'package:finances/shared/_contracts/custom_error.dart';

/// Represents a mock class implementation of the abstract [CustomError] class.
class ErrorMock extends CustomError {
  /// Default unique instance.
  static const ErrorMock defaultInstance = ErrorMock("ErrorMock#Code", "Error mock message");

  const ErrorMock(super.code, super.message);
}
