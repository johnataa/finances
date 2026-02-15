import 'package:finances/features/account/savings/savings_goal.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SavingsGoal', () {
    test('values should have correct ids', () {
      expect(SavingsGoal.free.id, 1);
      expect(SavingsGoal.coverExpenses.id, 2);
      expect(SavingsGoal.coverCustomAmount.id, 3);
    });

    test('fromId should return correct SavingsGoal', () {
      expect(SavingsGoal.fromId(1), SavingsGoal.free);
      expect(SavingsGoal.fromId(2), SavingsGoal.coverExpenses);
      expect(SavingsGoal.fromId(3), SavingsGoal.coverCustomAmount);
    });

    test('fromId should throw StateError for invalid id', () {
      expect(() => SavingsGoal.fromId(999), throwsStateError);
    });
  });
}
