import 'package:finances/features/transaction/transaction_status.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('TransactionStatus', () {
    test('values should have correct ids', () {
      expect(TransactionStatus.pending.id, 1);
      expect(TransactionStatus.confirmed.id, 2);
      expect(TransactionStatus.canceled.id, 3);
      expect(TransactionStatus.reversed.id, 4);
    });

    test('fromId should return correct TransactionStatus', () {
      expect(TransactionStatus.fromId(1), TransactionStatus.pending);
      expect(TransactionStatus.fromId(2), TransactionStatus.confirmed);
      expect(TransactionStatus.fromId(3), TransactionStatus.canceled);
      expect(TransactionStatus.fromId(4), TransactionStatus.reversed);
    });

    test('fromId should throw StateError for invalid id', () {
      expect(() => TransactionStatus.fromId(999), throwsStateError);
    });
  });
}
