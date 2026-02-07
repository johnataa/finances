import 'package:freezed_annotation/freezed_annotation.dart';

import '../entity.dart';
import '../meta/meta.dart';
import '../money/money.dart';
import '../name/name.dart';
import 'transaction/transaction.dart';

part 'base_account.freezed.dart';

@freezed
sealed class BaseAccount with _$BaseAccount implements Entity {
  const BaseAccount._();

  @override
  int get id => meta.id;

  const factory BaseAccount({
    @Default(Meta.empty) Meta meta,
    required Name name,
    required Money balance,
    @Default([]) List<Transaction> transactions,
  }) = _BaseAccount;
}
