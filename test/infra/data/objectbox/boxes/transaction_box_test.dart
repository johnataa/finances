import 'package:decimal/decimal.dart';
import 'package:finances/features/shared/money/currency.dart';
import 'package:finances/features/transaction/transaction.dart';
import 'package:finances/features/transaction/transaction_status.dart';
import 'package:finances/features/transaction/transaction_type.dart';
import 'package:finances/infra/data/objectbox/boxes/transaction_box.mapper.dart';
import 'package:finances/infra/data/objectbox/boxes/transaction_box.model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final mapper = TransactionBoxMapper();

  group('TransactionBoxMapper', () {
    test('should map Transaction to TransactionBM correctly', () {
      final transaction = Transaction(
        base: .create(id: 1),
        name: .create('Coffee'),
        amount: .create(Currency.usd, '5.50'),
        type: TransactionType.debit,
        status: TransactionStatus.confirmed,
        accountId: 10,
        categoryId: 20,
        scheduleId: 30,
        date: DateTime(2024, 3, 1),
        notes: 'Starbucks',
      );

      final bm = mapper.toBoxModel(transaction);

      expect(bm.id, 1);
      expect(bm.name, 'Coffee');
      expect(bm.amount, 550000000); // 5.50 * 10^8
      expect(bm.currency, Currency.usd.id);
      expect(bm.type, TransactionType.debit.id);
      expect(bm.status, TransactionStatus.confirmed.id);
      expect(bm.account.targetId, 10);
      expect(bm.category.targetId, 20);
      expect(bm.schedule.targetId, 30);
      expect(bm.date, transaction.date);
      expect(bm.notes, 'Starbucks');
    });

    test('should map TransactionBM to Transaction correctly', () {
      final bm = TransactionBM(
        id: 1,
        name: 'Salary',
        amount: 500000000000, // 5000 * 10^8
        currency: Currency.brl.id,
        type: TransactionType.credit.id,
        status: TransactionStatus.confirmed.id,
        date: DateTime(2024, 3, 5),
        notes: 'Monthly salary',
      );
      bm.account.targetId = 1;
      bm.category.targetId = 2;
      bm.schedule.targetId = 3;

      final entity = mapper.toEntity(bm);

      expect(entity.base.id, 1);
      expect(entity.name.value, 'Salary');
      expect(entity.amount.amount, Decimal.fromInt(5000));
      expect(entity.amount.currency, Currency.brl);
      expect(entity.type, TransactionType.credit);
      expect(entity.status, TransactionStatus.confirmed);
      expect(entity.accountId, 1);
      expect(entity.categoryId, 2);
      expect(entity.scheduleId, 3);
      expect(entity.date, bm.date);
      expect(entity.notes, 'Monthly salary');
    });

    test('should handle null scheduleId correctly', () {
      final transaction = Transaction(
        name: .create('Lunch'),
        amount: .create(Currency.usd, '15.00'),
        type: TransactionType.debit,
        accountId: 1,
        categoryId: 1,
      );

      final bm = mapper.toBoxModel(transaction);
      expect(bm.schedule.targetId, 0);

      final entity = mapper.toEntity(bm);
      expect(entity.scheduleId, isNull);
    });
  });
}
