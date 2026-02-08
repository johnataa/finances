import 'package:freezed_annotation/freezed_annotation.dart';

import '../../shared/entity.dart';
import '../../shared/meta/meta.dart';
import '../../shared/money/money.dart';
import '../../shared/name/name.dart';
import '../category/category.dart';
import '../schedule/schedule.dart';
import 'transaction_status.dart';
import 'transaction_type.dart';

part 'transaction.freezed.dart';

@freezed
sealed class Transaction with _$Transaction implements Entity {
  const Transaction._();

  @override
  int get id => meta.id;

  const factory Transaction({
    @Default(Meta.empty) Meta meta,
    required Name name,
    required Money amount,
    required TransactionType type,
    @Default(TransactionStatus.pending) TransactionStatus status,
    DateTime? date,
    String? notes,
    required Category category,
    Schedule? schedule,
  }) = _Transaction;
}
