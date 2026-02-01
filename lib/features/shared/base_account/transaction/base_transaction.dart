import 'package:freezed_annotation/freezed_annotation.dart';

import '../../meta/meta.dart';
import '../../money/money.dart';
import '../../name/name.dart';
import 'transaction_status.dart';
import 'transaction_type.dart';

part 'base_transaction.freezed.dart';

@freezed
abstract class BaseTransaction with _$BaseTransaction {
  const factory BaseTransaction({
    @Default(Meta.empty) Meta meta,
    required Name name,
    required Money amount,
    required TransactionType type,
    @Default(TransactionStatus.pending) TransactionStatus status,
    DateTime? date,
    String? notes,
  }) = _BaseTransaction;
}
