import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/base/base.dart';
import '../../core/frequency/frequency.dart';
import '../../core/interfaces/entity.dart';
import '../../core/money/money.dart';
import '../../core/name/name.dart';
import 'schedule_type.dart';

part 'schedule.freezed.dart';

@freezed
sealed class Schedule with _$Schedule implements IEntity {
  const Schedule._();

  @override
  int get id => base.id;

  const factory Schedule({
    @Default(Base.empty) Base base,
    required Name name,
    required Money amount,
    required Frequency frequency,
    required ScheduleType type,
    required DateTime startDate,
    required int accountId,
    required int categoryId,
    DateTime? endDate,
  }) = _Schedule;
}
