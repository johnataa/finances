import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../regular_account/schedule.dart';
import '../../entity.dart';
import '../category/category.dart';
import 'base_transaction.dart';

part 'transaction.freezed.dart';

@freezed
sealed class Transaction with _$Transaction implements Entity {
  const Transaction._();

  @override
  int get id => base.id;

  const factory Transaction({
    required BaseTransaction base,
    required Category category,
    Schedule? schedule,
    @Default([]) List<BaseTransaction> history,
  }) = _Transaction;
}
