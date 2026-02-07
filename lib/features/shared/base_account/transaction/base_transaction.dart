import 'package:freezed_annotation/freezed_annotation.dart';

import '../../entity.dart';
import '../../meta/meta.dart';
import '../../money/money.dart';
import '../../name/name.dart';
import 'transaction_status.dart';
import 'transaction_type.dart';

part 'base_transaction.freezed.dart';

@freezed
sealed class BaseTransaction with _$BaseTransaction implements Entity {
  const BaseTransaction._();

  @override
  int get id => meta.id;

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
