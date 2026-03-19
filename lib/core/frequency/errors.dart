import '../abstractions/custom_error.dart';

final class FrequencyErrors {
  static const String _codePrefix = "FrequencyError";

  static const CustomError invalidFrequencyValueError = CustomError(
    code: "$_codePrefix#001",
    message: "Frequency must greater than zero.",
  );
}
