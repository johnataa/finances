import 'package:finances/core/money/currency.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Currency', () {
    test('values should have correct ids', () {
      expect(Currency.usd.id, 1);
      expect(Currency.eur.id, 2);
      expect(Currency.brl.id, 3);
    });

    test('values should have correct symbols', () {
      expect(Currency.usd.symbol, '\$');
      expect(Currency.eur.symbol, '€');
      expect(Currency.brl.symbol, 'R\$');
    });

    test('fromId should return correct Currency', () {
      expect(Currency.fromId(1), Currency.usd);
      expect(Currency.fromId(2), Currency.eur);
      expect(Currency.fromId(3), Currency.brl);
    });

    test('fromId should throw StateError for invalid id', () {
      expect(() => Currency.fromId(999), throwsStateError);
    });
  });
}
