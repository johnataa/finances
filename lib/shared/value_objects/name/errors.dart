import '../../error.dart';
import 'name.dart';

const String errorPefix = "NameError";

final class InvalidNameLengthError extends Error {
  InvalidNameLengthError()
    : super(
        "$errorPefix#001",
        'Name cannot have less than ${Name.minLength} or more than ${Name.maxLength} chars.',
      );
}
