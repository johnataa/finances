import 'package:finances/features/transaction/transaction_type.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('TransactionType', () {
    test('values should have correct ids', () {
      expect(TransactionType.credit.id, 1);
      expect(TransactionType.debit.id, 2);
      expect(TransactionType.transfer.id, 3);
    });

    test('fromId should return correct TransactionType', () {
      expect(TransactionType.fromId(1), TransactionType.credit);
      expect(TransactionType.fromId(2), TransactionType.debit);
      expect(TransactionType.fromId(3), TransactionType.transfer);
    });

    test('fromId should throw StateError for invalid id', () {
      expect(() => TransactionType.fromId(999), throwsStateError);
    });
  });
}
