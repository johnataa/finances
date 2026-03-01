import 'package:finances/infra/data/objectbox/shared/base_box.dart';
import 'package:finances/infra/data/objectbox/shared/query_parser.dart';
import 'package:finances/shared/abstractions/order_by.dart';
import 'package:flutter/foundation.dart';

import '../../../../../infra/data/objectbox/gen/objectbox.g.dart';
import '../../../../features/entity_mock.dart';
import '../../../../features/entity_mock.query.dart';
import 'entity_mock_box.model.dart';

final class EntityBoxMock
    extends BaseBox<EntityBMMock, EntityMock, EntityFilterMock, OrderBy<EntityFieldMock>> {
  EntityBoxMock(super.store, super.mapper);

  @override
  @protected
  QueryParser<EntityBMMock> parseQuery(
    EntityFilterMock? filter,
    OrderBy<EntityFieldMock>? orderBy,
  ) => QueryParser(
    filter?.logic,
    [
      filter?.id.using(EntityBMMock_.id),
      filter?.sillyProp.using(EntityBMMock_.sillyProp),
      filter?.createdAt.using(EntityBMMock_.createdAt),
      filter?.updatedAt.using(EntityBMMock_.updatedAt),
    ],
    switch (orderBy?.field) {
      EntityFieldMock.id => orderBy.using(EntityBMMock_.id),
      EntityFieldMock.sillyProp => orderBy.using(EntityBMMock_.sillyProp),
      EntityFieldMock.createdAt => orderBy.using(EntityBMMock_.createdAt),
      EntityFieldMock.updatedAt => orderBy.using(EntityBMMock_.updatedAt),
      _ => null,
    },
  );
}
