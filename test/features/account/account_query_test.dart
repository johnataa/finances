import 'package:finances/features/account/account.query.dart';
import 'package:finances/shared/abstractions/filter.dart';
import 'package:finances/shared/abstractions/order_by.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AccountFilter', () {
    test('defaults to or logic', () {
      const AccountFilter filter = .by();
      expect(filter.logic, FilterLogic.or);
    });

    test('stores name filter correctly', () {
      const String input = 'test account';
      const AccountFilter filter = .by(name: .equals(input));

      expect(filter.name, isNotNull);
      expect(filter.name!.map(equals: (f) => f.input, contains: (f) => f.input), input);
    });
  });

  group('AccountField', () {
    test('name order defaults to asc', () {
      final order = AccountField.name.asc;
      expect(order.way, OrderWay.asc);
    });

    test('name order stores desc correctly', () {
      final order = AccountField.name.desc;
      expect(order.way, OrderWay.desc);
    });
  });
}
