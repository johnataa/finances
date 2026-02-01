import 'package:freezed_annotation/freezed_annotation.dart';

import '../shared/base_account/base_account.dart';
import 'schedule.dart';

part 'regular_account.freezed.dart';

@freezed
abstract class RegularAccount with _$RegularAccount {
  const RegularAccount._();

  const factory RegularAccount({
    required BaseAccount base,
    @Default([]) List<Schedule> schedules,
  }) = _RegularAccount;
}
