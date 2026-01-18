import '../custom_error.dart';
import 'name.dart';

const String _codePrefix = "NameError";

final class InvalidNameLengthError extends CustomError {
  const InvalidNameLengthError()
    : super(
        "$_codePrefix#001",
        'Name cannot have less than ${Name.minLength} or more than ${Name.maxLength} chars.',
      );
}
