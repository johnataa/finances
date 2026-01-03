import '../../error.dart';
import 'currency.dart';

const String errorPrefix = "MoneyError";

class InvalidMoneyFormatError extends Error {
  InvalidMoneyFormatError()
    : super("$errorPrefix#001", 'Invalid money format.');
}

class InvalidOperationError extends Error {
  const InvalidOperationError(Currency moneyCurrency, Currency givenCurrency)
    : super(
        "$errorPrefix#002",
        "The given currency '$moneyCurrency' does not match '$givenCurrency'. Please consider a conversion.",
      );
}
