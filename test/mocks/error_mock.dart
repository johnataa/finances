import 'package:finances/shared/custom_error.dart';

/// Represents a mock class implementation of the abstract [CustomError] class.
class ErrorMock extends CustomError {
  static final ErrorMock instance = const ErrorMock();

  const ErrorMock() : super("ErrorMock#Code", "Error mock message");
}
