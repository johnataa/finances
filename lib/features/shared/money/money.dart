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

  static Result<Money> create(Currency currency, Decimal? amount) {
    if (amount == null) {
      return Result.failure(InvalidMoneyFormatError());
    }

    return Result.success(Money._create(currency, amount));
  }

  static Result<Money> parse(String currency, String amount) =>
      create(Currency.parse(currency), Decimal.tryParse(amount));

  static Money zero(Currency currency) => Money._create(currency, Decimal.zero);

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
    return Money._create(currency, (amount / other.amount).toDecimal(scaleOnInfinitePrecision: 15));
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
