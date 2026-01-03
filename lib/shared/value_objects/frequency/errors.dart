import '../../error.dart';

const String errorPrefix = "FrequencyError";

class InvalidFrequencyValueError extends Error {
  InvalidFrequencyValueError()
    : super("$errorPrefix#001", "Frequency must greater than zero.");
}
