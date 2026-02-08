import 'package:decimal/decimal.dart';
import 'package:finances/shared/money/currency.dart';
import 'package:finances/shared/money/errors.dart';
import 'package:finances/shared/money/money.dart';
import 'package:finances/shared/result.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_error_codes.dart';

void main() {
  group('Money Construction and Validation', () {
    test('Should parse decimal string with decimal points', () {
      final result = Money.tryCreate(Currency.usd, '10.50');
      expect(result, isA<Success<Money>>());
      result.map(
        success: (s) {
          expect(s.value.currency, Currency.usd);
          expect(s.value.amount, Decimal.parse('10.50'));
        },
        failure: (_) => fail('Should be success'),
      );
    });

    test('Money.parse should create from strings', () {
      final money = Money.parse('usd', '15.75');
      expect(money.currency, Currency.usd);
      expect(money.amount, Decimal.parse('15.75'));
    });

    test('Money.create should create from currency and string', () {
      final money = Money.create(Currency.brl, '100');
      expect(money.currency, Currency.brl);
      expect(money.amount, Decimal.fromInt(100));
    });

    test('Should return failure for invalid amount string', () {
      final result = Money.tryCreate(Currency.usd, 'invalid');
      expect(result, isA<Failure<Money>>());
      result.map(
        success: (_) => fail('Should be failure'),
        failure: (f) => expect(f.error, isA<InvalidMoneyFormatError>()),
      );
    });
  });

  group('Money Operations', () {
    final m10 = Money.create(Currency.usd, "10");
    final m5 = Money.create(Currency.usd, "5");
    final m10brl = Money.create(Currency.brl, "10");

    test('Addition should correct sum', () {
      final result = m10 + m5;
      expect(result.amount, Decimal.fromInt(15));
    });

    test('Subtraction should correct diff', () {
      final result = m10 - m5;
      expect(result.amount, Decimal.fromInt(5));
    });

    test('Multiplication should correct product', () {
      final result = m10 * m5;
      expect(result.amount, Decimal.fromInt(50));
    });

    test('Division should correct quotient', () {
      final result = m10 / m5;
      expect(result.amount, Decimal.fromInt(2));
    });

    test('Operators should throw InvalidOperationError for different currencies', () {
      expect(() => m10 + m10brl, throwsA(isA<InvalidOperationError>()));
      expect(() => m10 - m10brl, throwsA(isA<InvalidOperationError>()));
    });
  });

  group('Money Conversion', () {
    test('convertTo should return new money with new currency and rate applied', () {
      final m10usd = Money.create(Currency.usd, "10");
      final converted = m10usd.convertTo(
        currency: Currency.brl,
        withFxRate: Decimal.fromInt(5),
      );

      expect(converted.currency, Currency.brl);
      expect(converted.amount, Decimal.fromInt(50));
    });
  });

  group('Equality', () {
    test('Should be equal if currency and amount match', () {
      final m1 = Money.create(Currency.usd, "10");
      final m2 = Money.create(Currency.usd, "10");
      expect(m1, m2);
    });

    test('Should not be equal if different currency', () {
      final m1 = Money.create(Currency.usd, "10");
      final m2 = Money.create(Currency.brl, "10");
      expect(m1, isNot(m2));
    });
  });

  group('Static Construction', () {
    test('Zero should return valid zero money', () {
      final result = Money.zero(Currency.brl);
      expect(result.currency, Currency.brl);
      expect(result.amount, Decimal.zero);
    });

    test('One should return valid money with amount one', () {
      final result = Money.one(Currency.brl);
      expect(result.currency, Currency.brl);
      expect(result.amount, Decimal.one);
    });
  });

  testErrorCodes({
    InvalidMoneyFormatError(): "MoneyError#001",
    InvalidOperationError(Currency.usd, Currency.brl): "MoneyError#002",
  });
}
