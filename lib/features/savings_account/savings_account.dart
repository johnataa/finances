import 'package:freezed_annotation/freezed_annotation.dart';

import '../shared/base_account/base_account.dart';
import '../shared/entity.dart';
import '../shared/money/money.dart';
import 'savings_goal.dart';

part 'savings_account.freezed.dart';

@freezed
sealed class SavingsAccount with _$SavingsAccount implements Entity {
  const SavingsAccount._();

  @override
  int get id => base.id;

  const factory SavingsAccount({
    required BaseAccount base,
    required SavingsGoal goal,
    Money? amountToCover,
    int? coverageInMonth,
  }) = _SavingsAccount;
}
