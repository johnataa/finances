import 'package:decimal/decimal.dart';

import '../money/currency.dart';
import '../money/money.dart';
import '../../abstractions/result.dart';
import 'errors.dart';

/// A snapshot of exchange rates relative to [Currency.usd].
///
/// All rates represent how many units of a given currency equal 1 USD.
/// Conversions between non-USD currencies use USD as a pivot.
///
/// This is a Value Object — two [ExchangeRates] with the same rates are equal.
final class ExchangeRates {
  final Map<Currency, Decimal> _rates;

  const ExchangeRates(this._rates);

  /// Converts [money] to the target [currency].
  ///
  /// If [money] and [currency] are the same, returns [money] unchanged.
  /// Uses USD as a pivot for cross-currency conversions.
  ///
  /// missing from this snapshot.
  Result<Money> convert(Money money, Currency to) {
    if (money.currency == to) return Result.success(money);

    final fromRate = _rateFor(money.currency);
    final toRate = _rateFor(to);

    if (fromRate == null) {
      return Result.failure(ExchangeErrors.missingExchangeRateError(money.currency));
    }

    if (toRate == null) {
      return Result.failure(ExchangeErrors.missingExchangeRateError(to));
    }

    // from → USD → to
    final inUsd = (money.amount / fromRate).toDecimal(scaleOnInfinitePrecision: 15);
    final converted = (inUsd * toRate);

    return Result.success(Money.create(to, converted.toString()));
  }

  /// Returns the rate for [currency] relative to USD.
  /// USD itself always returns 1.
  Decimal rateFor(Currency currency) => _rateFor(currency) ?? (currency == Currency.usd ? Decimal.one : Decimal.zero);

  Decimal? _rateFor(Currency currency) {
    if (currency == Currency.usd) return Decimal.one;
    return _rates[currency];
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is ExchangeRates && _mapsEqual(_rates, other._rates);

  @override
  int get hashCode => Object.hashAll(_rates.entries.map((e) => Object.hash(e.key, e.value)));

  bool _mapsEqual(Map<Currency, Decimal> a, Map<Currency, Decimal> b) {
    if (a.length != b.length) return false;
    for (final entry in a.entries) {
      if (b[entry.key] != entry.value) return false;
    }
    return true;
  }
}
