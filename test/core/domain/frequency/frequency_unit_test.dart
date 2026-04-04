import 'package:finances/core/domain/frequency/frequency_unit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FrequencyUnit', () {
    test('values should have correct ids', () {
      expect(FrequencyUnit.day.id, 1);
      expect(FrequencyUnit.week.id, 2);
      expect(FrequencyUnit.month.id, 3);
      expect(FrequencyUnit.year.id, 4);
    });

    test('fromId should return correct FrequencyUnit', () {
      expect(FrequencyUnit.fromId(1), FrequencyUnit.day);
      expect(FrequencyUnit.fromId(2), FrequencyUnit.week);
      expect(FrequencyUnit.fromId(3), FrequencyUnit.month);
      expect(FrequencyUnit.fromId(4), FrequencyUnit.year);
    });

    test('fromId should throw StateError for invalid id', () {
      expect(() => FrequencyUnit.fromId(999), throwsStateError);
    });
  });
}
