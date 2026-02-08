import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../shared/meta/meta.dart';
import '../../../../shared/name/name.dart';
import '../../../shared/money/money.dart';
import '../../schedule/schedule.dart';
import '../../transaction/transaction.dart';
import '../account.dart';

part 'regular_account.freezed.dart';

@freezed
sealed class RegularAccount extends Account with _$RegularAccount {
  const RegularAccount._();

  const factory RegularAccount({
    @Default(Meta.empty) Meta meta,
    required Name name,
    required Money balance,
    @Default([]) List<Schedule> schedules,
    @Default([]) List<Transaction> transactions,
  }) = _RegularAccount;
}
