import 'package:decimal/decimal.dart';
import 'package:finances/core/abstractions/custom_error.dart';
import 'package:finances/core/abstractions/result.dart';
import 'package:finances/features/shared/money/currency.dart';
import 'package:finances/features/shared/money/errors.dart';
import 'package:finances/features/shared/money/money.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../core/abstractions/test_error_codes.dart';

void main() {
  group('Money.tryCreate', () {
    test('Should parse decimal string correctly', () {
      // Act
      final result = Money.tryCreate(.usd, '10.50');

      // Assert
      expect(result, isA<Success<Money>>());
      result.map(
        success: (s) {
          expect(s.value.currency, Currency.usd);
          expect(s.value.amount, Decimal.parse('10.50'));
        },
        failure: (_) => fail('Should be success'),
      );
    });

    test('Money.fromScaledInt Should create valid instance', () {
      // Act
      final Money money = .fromScaledInt(Currency.usd.id, 1_500_000_000);

      // Assert
      expect(money.currency, Currency.usd);
      expect(money.amount, Decimal.fromInt(15));
    });

    test('Should create valid money instance', () {
      // Act
      final Money money = .create(.brl, '100');

      // Assert
      expect(money.currency, Currency.brl);
      expect(money.amount, Decimal.fromInt(100));
    });

    test('Should return failure for invalid amount string', () {
      // Act
      final result = Money.tryCreate(.usd, 'invalid');

      // Assert
      expect(result, isA<Failure<Money>>());
      result.map(
        success: (_) => fail('Should be failure'),
        failure: (f) => expect(f.error, MoneyErrors.invalidMoneyFormatError),
      );
    });

    test('Should allow negative amount string', () {
      // Act
      final result = Money.tryCreate(.usd, '-10.50');

      // Assert
      expect(result, isA<Success<Money>>());
      result.map(
        success: (s) => expect(s.value.amount, Decimal.parse('-10.50')),
        failure: (_) => fail('Should be success'),
      );
    });
  });

  group('Money Operations', () {
    final Money m10 = .create(.usd, "10");
    final Money m5 = .create(.usd, "5");
    final Money m10brl = .create(.brl, "10");

    test('Addition Should return correct sum', () {
      // Act
      final result = m10 + m5;

      // Assert
      expect(result.amount, Decimal.fromInt(15));
    });

    test('Subtraction Should return correct difference', () {
      // Act
      final result = m10 - m5;

      // Assert
      expect(result.amount, Decimal.fromInt(5));
    });

    test('Multiplication Should return correct product', () {
      // Act
      final result = m10 * m5;

      // Assert
      expect(result.amount, Decimal.fromInt(50));
    });

    test('Division Should return correct quotient', () {
      // Act
      final result = m10 / m5;

      // Assert
      expect(result.amount, Decimal.fromInt(2));
    });

    test('Operators Should throw InvalidOperationError for different currencies', () {
      // Act & Assert
      expect(() => m10 + m10brl, throwsA(isA<CustomError>()));
      expect(() => m10 - m10brl, throwsA(isA<CustomError>()));
    });

    test('Addition with zero Should return same value', () {
      // Arrange
      final Money zero = .zero(.usd);

      // Act
      final Money result = m10 + zero;

      // Assert
      expect(result.amount, m10.amount);
    });

    test('Division by very small value Should handle precision', () {
      // Arrange
      final Money m1 = .one(.usd);
      final Money tiny = .create(.usd, "0.00000001");

      // Act
      final result = m1 / tiny;

      // Assert
      expect(result.amount, Decimal.fromInt(100_000_000));
    });
  });

  group('Money Conversion', () {
    test('Should return new money with new currency and rate applied', () {
      // Arrange
      final Money m10usd = .create(.usd, "10");

      // Act
      final converted = m10usd.convertTo(currency: .brl, withFxRate: .fromInt(5));

      // Assert
      expect(converted.currency, Currency.brl);
      expect(converted.amount, Decimal.fromInt(50));
    });
  });

  group('Equality', () {
    test('Should be equal if currency and amount match', () {
      // Arrange
      final Money m1 = .create(.usd, "10");
      final Money m2 = .create(.usd, "10");

      // Act & Assert
      expect(m1, m2);
    });

    test('Should not be equal if different currency', () {
      // Arrange
      final Money m1 = .create(.usd, "10");
      final Money m2 = .create(.brl, "10");

      // Act & Assert
      expect(m1, isNot(m2));
    });
  });

  group('Static Construction', () {
    test('Zero Should return valid zero money', () {
      // Act
      final Money result = .zero(.brl);

      // Assert
      expect(result.currency, Currency.brl);
      expect(result.amount, Decimal.zero);
    });

    test('One Should return valid money with amount one', () {
      // Act
      final Money result = .one(.brl);

      // Assert
      expect(result.currency, Currency.brl);
      expect(result.amount, Decimal.one);
    });
  });

  testErrorCodes({
    MoneyErrors.invalidMoneyFormatError: "MoneyError#001",
    MoneyErrors.invalidOperationError(Currency.usd, Currency.brl): "MoneyError#002",
  });
}
