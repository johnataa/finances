import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/domain/base/base.dart';
import '../../../core/domain/money/money.dart';
import '../../../core/domain/name/name.dart';
import '../../schedule/schedule.dart';
import '../../transaction/transaction.dart';
import '../account.dart';

part 'regular_account.freezed.dart';

@freezed
sealed class RegularAccount extends Account with _$RegularAccount {
  const RegularAccount._();

  const factory RegularAccount({
    @Default(Base.empty) Base base,
    required Name name,
    required Money balance,
    @Default(0) int accountId,
    @Default([]) List<Schedule> schedules,
    @Default([]) List<Transaction> transactions,
  }) = _RegularAccount;
}
