import 'package:freezed_annotation/freezed_annotation.dart';

import '../shared/base_account/base_account.dart';
import '../shared/entity.dart';
import 'schedule.dart';

part 'regular_account.freezed.dart';

@freezed
sealed class RegularAccount with _$RegularAccount implements Entity {
  const RegularAccount._();

  @override
  int get id => base.id;

  const factory RegularAccount({
    required BaseAccount base,
    @Default([]) List<Schedule> schedules,
  }) = _RegularAccount;
}
