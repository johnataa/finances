import 'package:decimal/decimal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../result.dart';
import 'currency.dart';
import 'errors.dart';

part 'money.freezed.dart';

@freezed
abstract class Money with _$Money {
  const Money._();
  const factory Money._create(Currency currency, Decimal amount) = _Money;

  static Money zero(Currency currency) => Money._create(currency, Decimal.zero);
  static Money one(Currency currency) => Money._create(currency, Decimal.one);

  static Money create(Currency currency, String amount) =>
      tryCreate(currency, amount).getOrThrow();

  static Money parse(String currency, String amount) =>
      tryCreate(Currency.parse(currency), amount).getOrThrow();

  /// Tries to create a [Money] from a currency and amount.
  /// Returns a [Result] with the created [Money] or an error.
  static Result<Money> tryCreate(Currency currency, String amount) {
    final parsedAmount = Decimal.tryParse(amount);
    if (parsedAmount == null) {
      return Result.failure(InvalidMoneyFormatError());
    }

    return Result.success(Money._create(currency, parsedAmount));
  }

  Money operator +(Money other) {
    _ensureValidOperation(other);
    return Money._create(currency, amount + other.amount);
  }

  Money operator -(Money other) {
    _ensureValidOperation(other);
    return Money._create(currency, amount - other.amount);
  }

  Money operator *(Money other) {
    _ensureValidOperation(other);
    return Money._create(currency, amount * other.amount);
  }

  Money operator /(Money other) {
    _ensureValidOperation(other);
    return Money._create(
      currency,
      (amount / other.amount).toDecimal(scaleOnInfinitePrecision: 15),
    );
  }

  /// Converts the [value] into another [Money] object with the new given [currency].
  Money convertTo({required Currency currency, required Decimal withFxRate}) =>
      Money._create(currency, amount * withFxRate);

  @override
  String toString({int withPrecision = 2}) =>
      "${currency.name.toUpperCase()} ${amount.toStringAsFixed(withPrecision)}";

  void _ensureValidOperation(Money other) {
    if (currency != other.currency) {
      throw InvalidOperationError(currency, other.currency);
    }
  }
}
