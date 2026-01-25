import '../custom_error.dart';

const String _codePrefix = "NameError";

final class InvalidNameLengthError extends CustomError {
  const InvalidNameLengthError(int minLength, int maxLength)
    : super(
        "$_codePrefix#001",
        'Name cannot have less than $minLength or more than $maxLength chars.',
      );
}

final class EmptyNameError extends CustomError {
  const EmptyNameError() : super("$_codePrefix#002", 'Name cannot be empty.');
}
