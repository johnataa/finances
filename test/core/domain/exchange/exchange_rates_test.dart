import 'package:decimal/decimal.dart';
import 'package:finances/core/abstractions/result.dart';
import 'package:finances/core/domain/exchange/exchange_rates.dart';
import 'package:finances/core/domain/exchange/errors.dart';
import 'package:finances/core/domain/money/currency.dart';
import 'package:finances/core/domain/money/money.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../abstractions/test_error_codes.dart';

void main() {
  group('ExchangeRates', () {
    test('Should convert correctly from USD to BRL', () {
      final rates = ExchangeRates({Currency.brl: Decimal.parse('5.0')});

      final usdMoney = Money.create(Currency.usd, '10.0');
      final result = rates.convert(usdMoney, Currency.brl);

      expect(result, isA<Success<Money>>());
      final brlMoney = result.getOrThrow();
      expect(brlMoney.currency, Currency.brl);
      expect(brlMoney.amount, Decimal.parse('50.0'));
    });

    test('Should convert correctly from BRL to USD', () {
      final rates = ExchangeRates({Currency.brl: Decimal.parse('5.0')});

      final brlMoney = Money.create(Currency.brl, '50.0');
      final result = rates.convert(brlMoney, Currency.usd);

      expect(result, isA<Success<Money>>());
      final usdMoney = result.getOrThrow();
      expect(usdMoney.currency, Currency.usd);
      expect(usdMoney.amount, Decimal.parse('10.0'));
    });

    test('Should convert correctly between non-USD currencies using cross rate', () {
      final rates = ExchangeRates({
        Currency.brl: Decimal.parse('5.0'),
        Currency.eur: Decimal.parse('0.9'),
      });

      // Eur 9 -> USD 10 -> BRL 50
      final eurMoney = Money.create(Currency.eur, '9.0');
      final result = rates.convert(eurMoney, Currency.brl);

      expect(result, isA<Success<Money>>());
      final brlMoney = result.getOrThrow();
      expect(brlMoney.currency, Currency.brl);
      expect(brlMoney.amount, Decimal.parse('50.0'));
    });

    test('Should return same money instance if converting to same currency', () {
      final rates = ExchangeRates({});
      final usdMoney = Money.create(Currency.usd, '10.0');

      final result = rates.convert(usdMoney, Currency.usd);
      expect(result, isA<Success<Money>>());
      expect(result.getOrThrow(), usdMoney);
    });

    test('Should return failure if rate is missing for source currency', () {
      final rates = ExchangeRates({Currency.eur: Decimal.parse('0.9')});

      final brlMoney = Money.create(Currency.brl, '50.0');
      final result = rates.convert(brlMoney, Currency.usd);

      expect(result, isA<Failure<Money>>());
      expect(
        (result as Failure).error,
        ExchangeErrors.missingExchangeRateError(Currency.brl),
      );
    });

    test('Should return failure if rate is missing for target currency', () {
      final rates = ExchangeRates({Currency.brl: Decimal.parse('5.0')});

      final usdMoney = Money.create(Currency.usd, '10.0');
      final result = rates.convert(usdMoney, Currency.eur);

      expect(result, isA<Failure<Money>>());
      expect(
        (result as Failure).error,
        ExchangeErrors.missingExchangeRateError(Currency.eur),
      );
    });

    test('rateFor should implicitly return 1 for USD', () {
      final rates = ExchangeRates({});
      expect(rates.rateFor(Currency.usd), Decimal.one);
    });
  });

  testErrorCodes({
    ExchangeErrors.apiKeyNotConfiguredError(): "ExchangeError#001",
    ExchangeErrors.networkError("Timeout"): "ExchangeError#002",
    ExchangeErrors.apiError(404, "Not Found"): "ExchangeError#003",
    ExchangeErrors.missingExchangeRateError(Currency.brl): "ExchangeError#004",
  });
}
