import 'package:freezed_annotation/freezed_annotation.dart';

import '../shared/base_account/category/category.dart';
import '../shared/frequency/frequency.dart';
import '../shared/meta/meta.dart';
import '../shared/money/money.dart';
import '../shared/name/name.dart';
import 'regular_account.dart';
import 'schedule_type.dart';

part 'schedule.freezed.dart';

@freezed
abstract class Schedule with _$Schedule {
  const factory Schedule({
    @Default(Meta.empty) Meta meta,
    required Name name,
    required Money amount,
    required Frequency frequency,
    required ScheduleType type,
    required DateTime startDate,
    required RegularAccount account,
    required Category category,
    DateTime? endDate,
  }) = _Schedule;
}
