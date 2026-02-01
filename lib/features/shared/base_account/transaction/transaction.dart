import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../regular_account/schedule.dart';
import '../category/category.dart';
import 'base_transaction.dart';

part 'transaction.freezed.dart';

@freezed
abstract class Transaction with _$Transaction {
  const factory Transaction({
    required BaseTransaction base,
    required Category category,
    Schedule? schedule,
    @Default([]) List<BaseTransaction> history,
  }) = _Transaction;
}
