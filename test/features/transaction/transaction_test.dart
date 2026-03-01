import 'package:finances/features/transaction/transaction.dart';
import 'package:finances/features/transaction/transaction_status.dart';
import 'package:finances/features/transaction/transaction_type.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Transaction', () {
    test('creates transaction with default status', () {
      final now = DateTime.now();

      final transaction = Transaction(
        name: .create('Test Transaction'),
        amount: .create(.brl, '100.00'),
        type: TransactionType.debit,
        accountId: 1,
        categoryId: 1,
        date: now,
      );

      expect(transaction.status, TransactionStatus.pending);
      expect(transaction.name.value, 'Test Transaction');
      expect(transaction.amount.amount.toString(), '100');
      expect(transaction.date, now);
    });

    test('supports copying with new values', () {
      final transaction = Transaction(
        name: .create('Original'),
        amount: .create(.brl, '50.00'),
        type: TransactionType.credit,
        accountId: 1,
        categoryId: 1,
      );

      final updated = transaction.copyWith(
        status: TransactionStatus.confirmed,
        notes: 'Some notes',
      );

      expect(updated.name.value, 'Original');
      expect(updated.status, TransactionStatus.confirmed);
      expect(updated.notes, 'Some notes');
    });
  });
}
