import 'package:freezed_annotation/freezed_annotation.dart';

import '../../abstractions/result.dart';
import 'errors.dart';
import 'frequency_unit.dart';

part 'frequency.freezed.dart';

@freezed
abstract class Frequency with _$Frequency {
  const Frequency._();

  const factory Frequency._create(int value, FrequencyUnit unit) = _Frequency;

  static final Frequency daily = ._create(1, .day);
  static final Frequency weekly = ._create(1, .week);
  static final Frequency monthly = ._create(1, .month);
  static final Frequency annualy = ._create(1, .year);

  /// Creates a [Frequency] from a value and unit.
  /// Throws an exception if the value is invalid.
  static Frequency create(int value, FrequencyUnit unit) => tryCreate(value, unit).getOrThrow();

  /// Tries to create a [Frequency] from a value and unit.
  /// Returns a [Result] with the created [Frequency] or an error.
  static Result<Frequency> tryCreate(int value, FrequencyUnit unit) {
    if (value < 1) {
      return const .failure(FrequencyErrors.invalidFrequencyValueError);
    }

    return .success(._create(value, unit));
  }

  @override
  String toString() {
    if (value == 1) {
      return "Every ${unit.name}";
    }

    return "Every $value ${unit.name}s";
  }
}
