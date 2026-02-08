import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../shared/meta/meta.dart';
import '../../../shared/money/money.dart';
import '../../../shared/name/name.dart';
import '../../schedule/schedule.dart';
import '../../transaction/transaction.dart';
import '../account.dart';
import 'savings_goal.dart';

part 'savings_account.freezed.dart';

@freezed
sealed class SavingsAccount extends Account with _$SavingsAccount {
  const SavingsAccount._();

  const factory SavingsAccount({
    @Default(Meta.empty) Meta meta,
    required Name name,
    required Money balance,
    required SavingsGoal goal,
    Money? amountToCover,
    int? coverageInMonth,
    @Default([]) List<Schedule> schedules,
    @Default([]) List<Transaction> transactions,
  }) = _SavingsAccount;
}
