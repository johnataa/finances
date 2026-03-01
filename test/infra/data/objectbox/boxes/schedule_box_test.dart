import 'package:finances/features/account/account.dart';
import 'package:finances/features/account/regular/regular_account.dart';
import 'package:finances/features/category/category.dart';
import 'package:finances/features/schedule/schedule.dart';
import 'package:finances/features/schedule/schedule.query.dart';
import 'package:finances/features/schedule/schedule_type.dart';
import 'package:finances/infra/data/objectbox/boxes/schedule_box.dart';
import 'package:finances/infra/data/objectbox/boxes/schedule_box.mapper.dart';
import 'package:finances/infra/data/objectbox/gen/objectbox.g.dart';
import 'package:finances/shared/abstractions/order_by.dart';
import 'package:finances/shared/frequency/frequency.dart';
import 'package:finances/shared/money/money.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../mocks/infra/data/objectbox/store_mock.dart';

void main() {
  late Store store;
  late ScheduleBox box;

  setUp(() async {
    store = await openInMemoryStore();
    box = ScheduleBox(store, ScheduleBoxMapper());
  });

  tearDown(() {
    store.close();
  });

  Category createCategory({int id = 0, String name = 'Test Category'}) => Category(
    base: .create(id: id),
    name: .create(name),
    icon: 'icon',
    color: 'color',
  );

  Account createAccount({int id = 0, String name = 'Test Account'}) => RegularAccount(
    base: .create(id: id),
    name: .create(name),
    balance: .create(.brl, '1000'),
  );

  Schedule createSchedule({
    int id = 0,
    String name = 'Test Schedule',
    Money? amount,
    Frequency? frequency,
    ScheduleType type = .expense,
    DateTime? startDate,
    Account? account,
    Category? category,
  }) => Schedule(
    base: .create(id: id),
    name: .create(name),
    amount: amount ?? .create(.brl, '100'),
    frequency: frequency ?? .monthly,
    type: type,
    startDate: startDate ?? DateTime(2023, 1, 1),
    accountId: account?.base.id ?? createAccount().base.id,
    categoryId: category?.base.id ?? createCategory().base.id,
  );

  group('ScheduleBox.persist', () {
    test('persists all fields and relationships', () async {
      // Arrange
      final schedule = createSchedule();

      // Act
      final persisted = await box.persist(schedule);

      // Assert
      expect(persisted, isNotNull);
      expect(persisted?.base.id, isNot(0));
      expect(persisted?.name.value, schedule.name.value);
      expect(persisted?.amount.amount, schedule.amount.amount);
      expect(persisted?.frequency, schedule.frequency);
      expect(persisted?.type, schedule.type);
      expect(persisted?.startDate, schedule.startDate);
      expect(persisted?.accountId, schedule.accountId);
      expect(persisted?.categoryId, schedule.categoryId);
    });
  });

  group('ScheduleBox.queryBuilder', () {
    test('filters by name', () async {
      // Arrange
      await box.persist(createSchedule(name: 'Rent'));
      await box.persist(createSchedule(name: 'Gym'));

      // Act
      final list = await box.getAll(filter: .by(name: .equals('Rent')));

      // Assert
      expect(list.length, 1);
      expect(list.first.name.value, 'Rent');
    });

    test('filters by amount', () async {
      // Arrange
      await box.persist(createSchedule(name: 'Cheap', amount: .create(.brl, '10.00')));
      await box.persist(createSchedule(name: 'Expensive', amount: .create(.brl, '100.00')));

      // Act
      final list = await box.getAll(
        filter: .by(amount: .equals(amount: '10.00')),
      );

      // Assert
      expect(list.length, 1);
      expect(list.first.name.value, 'Cheap');
    });

    test('orders by amount', () async {
      // Arrange
      await box.persist(createSchedule(name: 'Schedule B', amount: .create(.brl, '20')));
      await box.persist(createSchedule(name: 'Schedule A', amount: .create(.brl, '10')));

      // Act
      final list = await box.getAll(orderBy: ScheduleField.amount.asc);

      // Assert
      expect(list[0].name.value, 'Schedule A');
      expect(list[1].name.value, 'Schedule B');
    });
  });
}
