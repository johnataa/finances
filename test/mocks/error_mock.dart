import 'package:finances/shared/error.dart';

class ErrorMock extends Error {
  ErrorMock() : super("ErrorMock#Code", "Error mock message");
}
