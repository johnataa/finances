import 'package:finances/shared/custom_error.dart';

class ErrorMock extends CustomError {
  static final ErrorMock instance = const ErrorMock();

  const ErrorMock() : super("ErrorMock#Code", "Error mock message");
}
