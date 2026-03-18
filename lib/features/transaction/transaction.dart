import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/entity.dart';
import '../shared/base/base.dart';
import '../shared/money/money.dart';
import '../shared/name/name.dart';
import 'transaction_status.dart';
import 'transaction_type.dart';

part 'transaction.freezed.dart';

@freezed
sealed class Transaction with _$Transaction implements IEntity {
  const Transaction._();

  @override
  int get id => base.id;

  const factory Transaction({
    @Default(Base.empty) Base base,
    required Name name,
    required Money amount,
    required TransactionType type,
    required int accountId,
    required int categoryId,
    int? scheduleId,
    @Default(TransactionStatus.pending) TransactionStatus status,
    DateTime? date,
    String? notes,
  }) = _Transaction;
}
