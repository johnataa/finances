import '../../validation.dart';
import '../value_object.dart';
import 'errors.dart';
import 'frequency_unit.dart';

final class Frequency extends ValueObject<int> {
  static final Frequency daily = Frequency.every(1, FrequencyUnit.day);
  static final Frequency weekly = Frequency.every(1, FrequencyUnit.week);
  static final Frequency monthly = Frequency.every(1, FrequencyUnit.month);
  static final Frequency annualy = Frequency.every(1, FrequencyUnit.year);

  final FrequencyUnit unit;

  /// Instantiates and **validates** a [Frequency] value object.
  Frequency.every(int value, this.unit) : super(value, _validate(value));

  static Iterable<Validation> _validate(int value) sync* {
    yield Validation(
      when: value < 1,
      pushError: const InvalidFrequencyValueError(),
    );
  }

  @override
  bool operator ==(Object other) {
    if (other is Frequency) {
      return hashCode == other.hashCode;
    }

    return false;
  }

  @override
  int get hashCode => super.hashCode ^ unit.hashCode;

  @override
  String toString() {
    if (value == 1) {
      return "Every $unit";
    }

    return "Every $value ${unit}s";
  }
}
