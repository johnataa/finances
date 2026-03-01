import '../abstractions/custom_error.dart';
import 'currency.dart';

const String _codePrefix = "MoneyError";

final class InvalidMoneyFormatError extends CustomError {
  const InvalidMoneyFormatError() : super("$_codePrefix#001", 'Invalid money format.');
}

final class InvalidOperationError extends CustomError {
  const InvalidOperationError(Currency moneyCurrency, Currency givenCurrency)
    : super(
        "$_codePrefix#002",
        "The given currency '$moneyCurrency' does not match '$givenCurrency'. Please consider a conversion.",
      );
}
