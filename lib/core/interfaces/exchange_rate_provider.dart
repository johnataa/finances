import '../abstractions/result.dart';
import '../domain/exchange/exchange_rates.dart';
import '../domain/money/currency.dart';

/// Contract for fetching current exchange rates from an external source.
///
/// All rates are relative to USD, which is the base currency.
/// Implementations may call remote APIs, read from cache, etc.
abstract interface class IExchangeRateProvider {
  /// Fetches the current exchange rates for the given [currencies].
  ///
  /// [currencies] should not include [Currency.usd] as it is always
  /// the implicit base. The returned [ExchangeRates] snapshot will
  /// contain all requested currencies.
  Future<Result<ExchangeRates>> getRates(List<Currency> currencies);
}
