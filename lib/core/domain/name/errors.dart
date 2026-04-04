import '../../abstractions/custom_error.dart';
import 'name.dart';

final class NameErrors {
  static const String _codePrefix = "NameError";

  static const CustomError invalidNameLengthError = CustomError(
    code: "$_codePrefix#001",
    message: "Name cannot have less than ${Name.minLength} or more than ${Name.maxLength} chars.",
  );

  static const CustomError emptyNameError = CustomError(
    code: "$_codePrefix#002",
    message: "Name cannot be empty.",
  );
}
