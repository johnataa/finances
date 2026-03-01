import 'package:freezed_annotation/freezed_annotation.dart';

import '../../shared/base/base.dart';
import '../../shared/contracts/entity.dart';
import '../../shared/frequency/frequency.dart';
import '../../shared/money/money.dart';
import '../../shared/name/name.dart';
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
