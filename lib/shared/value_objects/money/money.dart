import 'package:decimal/decimal.dart';

import '../../validation.dart';
import '../value_object.dart';
import 'currency.dart';
import 'errors.dart';

final class Money extends ValueObject<Decimal> {
  final Currency currency;

  Money(this.currency, Decimal? amount) : super(amount, _validate(amount));

  factory Money.parse(String currency, String amount) =>
      Money(Currency.parse(currency), Decimal.tryParse(amount));

  static Iterable<Validation> _validate(Decimal? value) sync* {
    yield Validation(pushError: InvalidMoneyFormatError(), when: value == null);
  }

  Money operator +(Money amount) {
    _ensureValidOperation(amount);
    return Money(currency, value + amount.value);
  }

  Money operator -(Money amount) {
    _ensureValidOperation(amount);
    return Money(currency, value - amount.value);
  }

  Money operator *(Money amount) {
    _ensureValidOperation(amount);
    return Money(currency, value * amount.value);
  }

  Money operator /(Money amount) {
    _ensureValidOperation(amount);
    return Money(
      currency,
      (value / amount.value).toDecimal(scaleOnInfinitePrecision: 15),
    );
  }

  Money convertTo({required Currency currency, required Decimal withFxRate}) {
    _ensureValidAmount();
    return Money(currency, value * withFxRate);
  }

  @override
  bool operator ==(Object other) =>
      other is Money ? hashCode == other.hashCode : false;

  @override
  int get hashCode => currency.hashCode ^ value.hashCode;

  @override
  String toString({int withPrecision = 2}) {
    return "${currency.name.toUpperCase()} ${value.toStringAsFixed(withPrecision)}";
  }

  void _ensureValidOperation(Money amount) {
    _ensureValidAmount();
    amount._ensureValidAmount();

    if (currency != amount.currency) {
      throw InvalidOperationError(currency, amount.currency);
    }
  }

  void _ensureValidAmount() {
    if (hasError) {
      throw error;
    }
  }
}
