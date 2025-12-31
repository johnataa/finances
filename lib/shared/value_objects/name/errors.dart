import '../../error.dart';
import 'name.dart';

final class NameErrors {
  static const Error invalidNameLengthError = Error(
    code: "NameError#001",
    message:
        'Name cannot have less than ${Name.minLength} or more than ${Name.maxLength} chars.',
  );
}
