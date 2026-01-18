import 'package:decimal/decimal.dart';
import 'package:finances/features/shared/money/currency.dart';
import 'package:finances/features/shared/money/errors.dart';
import 'package:finances/features/shared/money/money.dart';
import 'package:finances/features/shared/result.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_error_codes.dart';

void main() {
  group('Money Validation', () {
    test('Should return success for valid amount', () {
      final result = Money.create(Currency.usd, Decimal.fromInt(10));
      expect(result, isA<Success<Money>>());
      result.map(
        success: (s) {
          expect(s.value.currency, Currency.usd);
          expect(s.value.amount, Decimal.fromInt(10));
        },
        failure: (_) => fail('Should be success'),
      );
    });

    test('Should return failure for null amount', () {
      final result = Money.create(Currency.usd, null);
      expect(result, isA<Failure<Money>>());
      result.map(
        success: (_) => fail('Should be failure'),
        failure: (f) => expect(f.error, isA<InvalidMoneyFormatError>()),
      );
    });
  });

  group('Money Construction', () {
    test('Parse should return valid money', () {
      final result = Money.parse('usd', '10.50');
      expect(result, isA<Success<Money>>());
      result.map(
        success: (s) {
          expect(s.value.currency, Currency.usd);
          expect(s.value.amount, Decimal.parse('10.50'));
        },
        failure: (_) => fail('Should be success'),
      );
    });
  });

  group('Money Operations', () {
    final m10 = Money.create(Currency.usd, Decimal.fromInt(10)).getOrThrow();
    final m5 = Money.create(Currency.usd, Decimal.fromInt(5)).getOrThrow();
    final m10brl = Money.create(Currency.brl, Decimal.fromInt(10)).getOrThrow();

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
      final m10usd = Money.create(Currency.usd, Decimal.fromInt(10)).getOrThrow();
      final converted = m10usd.convertTo(currency: Currency.brl, withFxRate: Decimal.fromInt(5));

      expect(converted.currency, Currency.brl);
      expect(converted.amount, Decimal.fromInt(50));
    });
  });

  group('Equality', () {
    test('Should be equal if currency and amount match', () {
      final m1 = Money.create(Currency.usd, Decimal.fromInt(10)).getOrThrow();
      final m2 = Money.create(Currency.usd, Decimal.fromInt(10)).getOrThrow();
      expect(m1, m2);
    });

    test('Should not be equal if different currency', () {
      final m1 = Money.create(Currency.usd, Decimal.fromInt(10)).getOrThrow();
      final m2 = Money.create(Currency.brl, Decimal.fromInt(10)).getOrThrow();
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

extension ResultExtensions<T> on Result<T> {
  T getOrThrow() => map(success: (s) => s.value, failure: (f) => throw f.error);
}
