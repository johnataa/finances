import 'package:flutter/foundation.dart';

import '../../../../features/account/account.dart';
import '../../../../features/account/account.query.dart';
import '../../../../shared/abstractions/order_by.dart';
import '../gen/objectbox.g.dart';
import '../shared/base_box.dart';
import '../shared/query_parser.dart';
import 'account_box.model.dart';

final class AccountBox
    extends BaseBox<AccountBM, Account, AccountFilter, OrderBy<AccountField>> {
  AccountBox(super.store, super.mapper);

  @override
  @protected
  QueryParser<AccountBM> parseQuery(
    AccountFilter? filter,
    OrderBy<AccountField>? orderBy,
  ) => QueryParser(
    filter?.logic,
    [
      filter?.id.using(AccountBM_.id),
      filter?.name.using(AccountBM_.name),
      filter?.createdAt.using(AccountBM_.createdAt),
      filter?.updatedAt.using(AccountBM_.updatedAt),
    ],
    switch (orderBy?.field) {
      .id => orderBy.using(AccountBM_.id),
      .name => orderBy.using(AccountBM_.name),
      .createdAt => orderBy.using(AccountBM_.createdAt),
      .updatedAt => orderBy.using(AccountBM_.updatedAt),
      _ => null,
    },
  );
}
