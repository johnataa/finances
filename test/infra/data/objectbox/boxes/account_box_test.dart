import 'package:finances/features/account/account.query.dart';
import 'package:finances/features/account/regular/regular_account.dart';
import 'package:finances/features/account/savings/savings_account.dart';
import 'package:finances/features/account/savings/savings_goal.dart';
import 'package:finances/infra/data/objectbox/boxes/account_box.dart';
import 'package:finances/infra/data/objectbox/boxes/account_box.mapper.dart';
import 'package:finances/infra/data/objectbox/boxes/schedule_box.mapper.dart';
import 'package:finances/infra/data/objectbox/gen/objectbox.g.dart';
import 'package:finances/shared/abstractions/order_by.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../mocks/infra/data/objectbox/store_mock.dart';

void main() {
  late Store store;
  late AccountBox box;

  setUp(() async {
    store = await openInMemoryStore();
    box = AccountBox(store, AccountBoxMapper(ScheduleBoxMapper()));
  });

  tearDown(() {
    store.close();
  });

  RegularAccount createRegularAccount({int id = 0, String name = 'Checking'}) =>
      RegularAccount(
        base: .create(id: id),
        name: .create(name),
        balance: .create(.brl, '1000'),
      );

  SavingsAccount createSavingsAccount({int id = 0, String name = 'Emergency'}) =>
      SavingsAccount(
        base: .create(id: id),
        name: .create(name),
        balance: .create(.brl, '5000'),
        goal: SavingsGoal.free,
      );

  group('AccountBox.persist', () {
    test('persists RegularAccount correctly', () async {
      final account = createRegularAccount();
      final persisted = await box.persist(account);

      expect(persisted, isNotNull);
      expect(persisted, isA<RegularAccount>());
      expect(persisted?.base.id, isNot(0));
      expect(persisted?.name.value, account.name.value);
    });

    test('persists SavingsAccount correctly', () async {
      final account = createSavingsAccount();
      final persisted = await box.persist(account);

      expect(persisted, isNotNull);
      expect(persisted, isA<SavingsAccount>());
      expect(persisted?.base.id, isNot(0));
      expect((persisted as SavingsAccount?)?.goal, account.goal);
    });

    test('updates existing account correctly', () async {
      final account = await box.persist(createRegularAccount(name: 'Old Name'));
      expect(account, isNotNull);

      final updated = (account as RegularAccount).copyWith(name: .create('New Name'));
      final persisted = await box.persist(updated);

      expect(persisted, isNotNull);
      expect(persisted?.base.id, account.base.id);
      expect(persisted?.name.value, 'New Name');
    });
  });

  group('AccountBox.queryBuilder', () {
    test('filters by name', () async {
      await box.persist(createRegularAccount(name: 'Salary'));
      await box.persist(createRegularAccount(name: 'Expenses'));

      final list = await box.getAll(filter: .by(name: .equals('Salary')));

      expect(list.length, 1);
      expect(list.first.name.value, 'Salary');
    });

    test('orders by name asc', () async {
      await box.persist(createRegularAccount(name: 'BBB'));
      await box.persist(createRegularAccount(name: 'AAA'));

      final list = await box.getAll(orderBy: AccountField.name.asc);

      expect(list[0].name.value, 'AAA');
      expect(list[1].name.value, 'BBB');
    });
  });
}
