import '../../abstractions/custom_error.dart';
import '../money/currency.dart';

final class ExchangeErrors {
  static const String _codePrefix = "ExchangeError";

  static CustomError apiKeyNotConfiguredError() => CustomError(
    code: "$_codePrefix#001",
    message:
        "Exchange API Key is not configured in Settings. Please provide a valid API Key to use this feature.",
  );

  static CustomError networkError(String message) => CustomError(
    code: "$_codePrefix#002",
    message: "Network error while fetching exchange rates: $message",
  );

  static CustomError apiError(int statusCode, String body) => CustomError(
    code: "$_codePrefix#003",
    message: "Exchange API request failed with status $statusCode: $body",
  );

  static CustomError missingExchangeRateError(Currency currency) => CustomError(
    code: "$_codePrefix#004",
    message: "No exchange rate found for currency '${currency.name.toUpperCase()}'.",
  );
}
