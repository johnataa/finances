import 'package:flutter/foundation.dart';

import '../../../../core/abstractions/order_by.dart';
import '../../../../features/transaction/transaction.dart';
import '../../../../features/transaction/transaction.query.dart';
import '../../../../features/transaction/transaction.repository.dart';
import '../gen/objectbox.g.dart';
import '../shared/base_box.dart';
import '../shared/query_parser.dart';
import 'transaction_box.model.dart';

final class TransactionBox
    extends BaseBox<TransactionBM, Transaction, TransactionFilter, OrderBy<TransactionField>>
    implements ITransactionRepository {
  TransactionBox(super.store, super.mapper);

  @override
  @protected
  QueryParser<TransactionBM> parseQuery(
    TransactionFilter? filter,
    OrderBy<TransactionField>? orderBy,
  ) => QueryParser(
    filter?.logic,
    [
      filter?.id.using(TransactionBM_.id),
      filter?.name.using(TransactionBM_.name),
      filter?.amount.using(TransactionBM_.amount, TransactionBM_.currency),
      filter?.type.using(TransactionBM_.type),
      filter?.status.using(TransactionBM_.status),
      filter?.accountId.using(TransactionBM_.account),
      filter?.categoryId.using(TransactionBM_.category),
      filter?.scheduleId.using(TransactionBM_.schedule),
      filter?.date.using(TransactionBM_.date),
      filter?.createdAt.using(TransactionBM_.createdAt),
      filter?.updatedAt.using(TransactionBM_.updatedAt),
    ],
    switch (orderBy?.field) {
      .id => orderBy.using(TransactionBM_.id),
      .name => orderBy.using(TransactionBM_.name),
      .amount => orderBy.using(TransactionBM_.amount),
      .type => orderBy.using(TransactionBM_.type),
      .status => orderBy.using(TransactionBM_.status),
      .date => orderBy.using(TransactionBM_.date),
      .createdAt => orderBy.using(TransactionBM_.createdAt),
      .updatedAt => orderBy.using(TransactionBM_.updatedAt),
      _ => null,
    },
  );
}
