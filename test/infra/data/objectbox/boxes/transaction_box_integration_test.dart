import 'package:finances/core/abstractions/filter.dart';
import 'package:finances/core/abstractions/order_by.dart';
import 'package:finances/core/money/currency.dart';
import 'package:finances/core/money/money.dart';
import 'package:finances/core/money/money.query.dart';
import 'package:finances/core/name/name.dart';
import 'package:finances/features/transaction/transaction.dart';
import 'package:finances/features/transaction/transaction.query.dart';
import 'package:finances/features/transaction/transaction_status.dart';
import 'package:finances/features/transaction/transaction_type.dart';
import 'package:finances/infra/data/objectbox/boxes/transaction_box.dart';
import 'package:finances/infra/data/objectbox/boxes/transaction_box.mapper.dart';
import 'package:finances/infra/data/objectbox/gen/objectbox.g.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../mocks/infra/data/objectbox/store_mock.dart';

void main() {
  late Store store;
  late TransactionBox box;

  setUp(() async {
    store = await openInMemoryStore();
    box = TransactionBox(store, TransactionBoxMapper());
  });

  tearDown(() {
    store.close();
  });

  Transaction createTransaction({
    String name = 'Test',
    String amount = '10.0',
    Currency currency = Currency.brl,
    TransactionType type = TransactionType.debit,
    TransactionStatus status = TransactionStatus.confirmed,
    DateTime? date,
    int accountId = 1,
    int categoryId = 1,
  }) => Transaction(
    name: Name.create(name),
    amount: Money.create(currency, amount),
    type: type,
    status: status,
    date: date ?? DateTime(2024, 1, 1),
    accountId: accountId,
    categoryId: categoryId,
  );

  group('TransactionBox Integration Tests', () {
    test('filters by date range', () async {
      // Arrange
      await box.persist(createTransaction(name: 'Early', date: DateTime(2024, 1, 1)));
      await box.persist(createTransaction(name: 'Target', date: DateTime(2024, 1, 15)));
      await box.persist(createTransaction(name: 'Late', date: DateTime(2024, 2, 1)));

      // Act
      final results = await box.getAll(
        filter: TransactionFilter.by(
          date: DateTimeFilter.between(DateTime(2024, 1, 10), DateTime(2024, 1, 20)),
        ),
      );

      // Assert
      expect(results.length, 1);
      expect(results.first.name.value, 'Target');
    });

    test('filters by transaction type', () async {
      // Arrange
      await box.persist(createTransaction(name: 'Expense', type: TransactionType.debit));
      await box.persist(createTransaction(name: 'Income', type: TransactionType.credit));

      // Act
      final results = await box.getAll(
        filter: TransactionFilter.by(type: IntFilter.equals(TransactionType.credit.id)),
      );

      // Assert
      expect(results.length, 1);
      expect(results.first.name.value, 'Income');
    });

    test('filters by account and category ids', () async {
      // Arrange
      await box.persist(createTransaction(name: 'Acc1 Cat1', accountId: 1, categoryId: 1));
      await box.persist(createTransaction(name: 'Acc1 Cat2', accountId: 1, categoryId: 2));
      await box.persist(createTransaction(name: 'Acc2 Cat1', accountId: 2, categoryId: 1));

      // Act
      final results = await box.getAll(
        filter: TransactionFilter.by(
          accountId: IntFilter.equals(1),
          categoryId: IntFilter.equals(1),
        ),
      );

      // Assert
      expect(results.length, 1);
      expect(results.first.name.value, 'Acc1 Cat1');
    });

    test('filters by amount and currency', () async {
      // Arrange
      await box.persist(createTransaction(name: 'BRL 10', amount: '10.0', currency: Currency.brl));
      await box.persist(createTransaction(name: 'USD 10', amount: '10.0', currency: Currency.usd));
      await box.persist(createTransaction(name: 'BRL 20', amount: '20.0', currency: Currency.brl));

      // Act
      final results = await box.getAll(
        filter: TransactionFilter.by(
          amount: MoneyFilter.equals(amount: '10.0', currency: Currency.brl.id),
        ),
      );

      // Assert
      expect(results.length, 1);
      expect(results.first.name.value, 'BRL 10');
    });

    test('filters by name', () async {
      await box.persist(createTransaction(name: 'Apple'));
      await box.persist(createTransaction(name: 'Banana'));

      final results = await box.getAll(
        filter: const TransactionFilter.by(name: StringFilter.equals('Apple')),
      );

      expect(results.length, 1);
      expect(results.first.name.value, 'Apple');
    });

    test('filters by status', () async {
      await box.persist(createTransaction(name: 'Pending', status: TransactionStatus.pending));
      await box.persist(createTransaction(name: 'Confirmed', status: TransactionStatus.confirmed));

      final results = await box.getAll(
        filter: TransactionFilter.by(status: IntFilter.equals(TransactionStatus.confirmed.id)),
      );

      expect(results.length, 1);
      expect(results.first.name.value, 'Confirmed');
    });

    test('filters by id', () async {
      final t1 = await box.persist(createTransaction(name: 'T1'));
      await box.persist(createTransaction(name: 'T2'));

      final results = await box.getAll(
        filter: TransactionFilter.by(id: IntFilter.equals(t1!.base.id)),
      );

      expect(results.length, 1);
      expect(results.first.name.value, 'T1');
    });

    test('filters by scheduleId', () async {
      await box.persist(createTransaction(name: 'NO Sched'));
      final t = createTransaction(name: 'SCHED').copyWith(scheduleId: 99);
      await box.persist(t);

      final results = await box.getAll(
        filter: TransactionFilter.by(scheduleId: IntFilter.equals(99)),
      );

      expect(results.length, 1);
      expect(results.first.name.value, 'SCHED');
    });

    test('filters by createdAt', () async {
      final t1 = await box.persist(createTransaction(name: 'Before'));
      await Future.delayed(const Duration(milliseconds: 10));
      final now = DateTime.now();
      await Future.delayed(const Duration(milliseconds: 10));
      await box.persist(createTransaction(name: 'After'));

      final results = await box.getAll(
        filter: TransactionFilter.by(createdAt: DateTimeFilter.beforeThan(now)),
      );

      expect(results.length, 1);
      expect(results.first.base.id, t1?.base.id);
    });

    test('filters by updatedAt', () async {
      final t1 = await box.persist(createTransaction(name: 'T1'));
      final now = DateTime.now();
      await Future.delayed(const Duration(milliseconds: 10));

      final t1Updated = t1!.copyWith(name: Name.create('T1 Updated'));
      await box.persist(t1Updated);

      final results = await box.getAll(
        filter: TransactionFilter.by(updatedAt: DateTimeFilter.afterThan(now)),
      );

      expect(results.length, 1);
      expect(results.first.name.value, 'T1 Updated');
    });

    test('orders by createdAt ascending', () async {
      final t1 = await box.persist(createTransaction(name: 'First'));
      await Future.delayed(const Duration(milliseconds: 10));
      await box.persist(createTransaction(name: 'Second'));

      final results = await box.getAll(orderBy: TransactionField.createdAt.asc);

      expect(results.first.base.id, t1?.base.id);
    });

    test('orders by updatedAt descending', () async {
      final t1 = await box.persist(createTransaction(name: 'First'));
      await box.persist(createTransaction(name: 'Second'));

      // Update t1 to have a newer updatedAt
      final t1Updated = t1!.copyWith(name: Name.create('First Updated'));
      await box.persist(t1Updated);

      final results = await box.getAll(orderBy: TransactionField.updatedAt.desc);

      expect(results.first.base.id, t1.base.id);
    });

    test('orders by name ascending', () async {
      await box.persist(createTransaction(name: 'Zebra'));
      await box.persist(createTransaction(name: 'Alpha'));

      final results = await box.getAll(orderBy: TransactionField.name.asc);

      expect(results.first.name.value, 'Alpha');
      expect(results.last.name.value, 'Zebra');
    });

    test('orders by status descending', () async {
      await box.persist(createTransaction(name: 'P', status: TransactionStatus.pending));
      await box.persist(createTransaction(name: 'C', status: TransactionStatus.confirmed));

      // Confirmed id = 1, Pending id = 0 (assuming based on usual enum order)
      final results = await box.getAll(orderBy: TransactionField.status.desc);

      expect(results.first.status, TransactionStatus.confirmed);
      expect(results.last.status, TransactionStatus.pending);
    });

    test('orders by id ascending', () async {
      final t1 = await box.persist(createTransaction(name: 'First'));
      await box.persist(createTransaction(name: 'Second'));

      final results = await box.getAll(orderBy: TransactionField.id.asc);

      expect(results.first.base.id, t1?.base.id);
    });

    test('orders by type ascending', () async {
      await box.persist(createTransaction(name: 'Debit', type: TransactionType.debit));
      await box.persist(createTransaction(name: 'Credit', type: TransactionType.credit));

      final results = await box.getAll(orderBy: TransactionField.type.asc);

      expect(results.first.type, TransactionType.credit);
      expect(results.last.type, TransactionType.debit);
    });
  });
}
