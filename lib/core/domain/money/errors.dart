import '../../abstractions/custom_error.dart';
import 'currency.dart';

final class MoneyErrors {
  static const String _codePrefix = "MoneyError";

  static const CustomError invalidMoneyFormatError = CustomError(
    code: "$_codePrefix#001",
    message: "Invalid money format.",
  );

  static CustomError invalidOperationError(
    Currency moneyCurrency,
    Currency givenCurrency,
  ) => CustomError(
    code: "$_codePrefix#002",
    message:
        "The given currency '$moneyCurrency' does not match '$givenCurrency'. Please consider a conversion.",
  );
}
