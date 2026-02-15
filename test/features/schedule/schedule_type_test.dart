import 'package:finances/features/schedule/schedule_type.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ScheduleType', () {
    test('values should have correct ids', () {
      expect(ScheduleType.income.id, 1);
      expect(ScheduleType.expense.id, 2);
      expect(ScheduleType.savings.id, 3);
    });

    test('fromId should return correct ScheduleType', () {
      expect(ScheduleType.fromId(1), ScheduleType.income);
      expect(ScheduleType.fromId(2), ScheduleType.expense);
      expect(ScheduleType.fromId(3), ScheduleType.savings);
    });

    test('fromId should throw StateError for invalid id', () {
      expect(() => ScheduleType.fromId(999), throwsStateError);
    });
  });
}
