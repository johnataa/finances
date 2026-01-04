import 'package:finances/shared/error.dart';

class ErrorMock extends Error {
  static final ErrorMock instance = const ErrorMock();

  const ErrorMock() : super("ErrorMock#Code", "Error mock message");
}
