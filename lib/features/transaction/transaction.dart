import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/domain/base/base.dart';
import '../../core/interfaces/entity.dart';
import '../../core/domain/money/money.dart';
import '../../core/domain/name/name.dart';
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
