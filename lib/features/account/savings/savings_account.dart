import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/base/base.dart';
import '../../../core/money/money.dart';
import '../../../core/name/name.dart';
import '../../schedule/schedule.dart';
import '../../transaction/transaction.dart';
import '../account.dart';
import 'savings_goal.dart';

part 'savings_account.freezed.dart';

@freezed
sealed class SavingsAccount extends Account with _$SavingsAccount {
  const SavingsAccount._();

  const factory SavingsAccount({
    @Default(Base.empty) Base base,
    required Name name,
    required Money balance,
    required SavingsGoal goal,
    Money? amountToCover,
    int? coverageInMonth,
    @Default(0) int accountId,
    @Default([]) List<Schedule> schedules,
    @Default([]) List<Transaction> transactions,
  }) = _SavingsAccount;
}
