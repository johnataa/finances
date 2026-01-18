import 'package:freezed_annotation/freezed_annotation.dart';

import '../result.dart';
import 'errors.dart';
import 'frequency_unit.dart';

part 'frequency.freezed.dart';

@freezed
abstract class Frequency with _$Frequency {
  const Frequency._();
  const factory Frequency._create(int value, FrequencyUnit unit) = _Frequency;

  static Result<Frequency> create(int value, FrequencyUnit unit) {
    if (value < 1) {
      return const Result.failure(InvalidFrequencyValueError());
    }

    return Result.success(Frequency._create(value, unit));
  }

  static final Frequency daily = Frequency._create(1, FrequencyUnit.day);
  static final Frequency weekly = Frequency._create(1, FrequencyUnit.week);
  static final Frequency monthly = Frequency._create(1, FrequencyUnit.month);
  static final Frequency annualy = Frequency._create(1, FrequencyUnit.year);

  @override
  String toString() {
    if (value == 1) {
      return "Every ${unit.name}";
    }

    return "Every $value ${unit.name}s";
  }
}
