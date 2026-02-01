import 'package:freezed_annotation/freezed_annotation.dart';

import '../meta/meta.dart';
import '../money/money.dart';
import '../name/name.dart';
import 'transaction/transaction.dart';

part 'base_account.freezed.dart';

@freezed
abstract class BaseAccount with _$BaseAccount {
  const factory BaseAccount({
    @Default(Meta.empty) Meta meta,
    required Name name,
    required Money balance,
    @Default([]) List<Transaction> transactions,
  }) = _BaseAccount;
}
