import '../../custom_error.dart';

const String _codePrefix = "FrequencyError";

final class InvalidFrequencyValueError extends CustomError {
  const InvalidFrequencyValueError()
    : super("$_codePrefix#001", "Frequency must greater than zero.");
}
