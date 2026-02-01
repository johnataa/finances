import 'package:flutter/foundation.dart';

import '../../../../features/shared/filter.dart';
import '../../../../features/shared/meta/meta_filter.dart';
import '../gen/objectbox.g.dart';

extension QueryBuilderParser<T> on QueryBuilder<T> {
  QueryBuilder<T> sortBy<D>(bool desc, QueryProperty<T, D> prop) =>
      order(prop, flags: desc ? 1 : 0);

  QueryBuilder<T> sortByMeta(
    MetaSort? sort,
    QueryIntegerProperty<T> idProp,
    QueryDateProperty<T> createdAtProp,
    QueryDateProperty<T> updatedAtProp,
  ) =>
      sort?.map(
        id: (sort) => sortBy(sort.desc, idProp),
        createdAt: (sort) => sortBy(sort.desc, createdAtProp),
        updatedAt: (sort) => sortBy(sort.desc, updatedAtProp),
      ) ??
      this;
}

mixin QueryParser {
  @protected
  Condition<T>? combineConditions<T>(Iterable<Condition<T>> conditions, FilterType type) {
    Condition<T>? condition;

    for (final Condition<T> c in conditions) {
      if (condition == null) {
        condition = c;
        continue;
      }

      condition = switch (type) {
        FilterType.intersection => condition.and(c),
        FilterType.union => condition.or(c),
      };
    }

    return condition;
  }

  @protected
  Condition<T>? parseMetaFilter<T>(
    MetaFilter? filter,
    QueryIntegerProperty<T> idProp,
    QueryDateProperty<T> createdAtProp,
    QueryDateProperty<T> updatedAtProp,
  ) {
    final conditions = [
      parseIntCondition(filter?.id, idProp),
      parseDateTimeCondition(filter?.createdAt, createdAtProp),
      parseDateTimeCondition(filter?.updatedAt, updatedAtProp),
    ];

    return combineConditions(
      conditions.nonNulls,
      filter?.type ?? FilterType.intersection,
    );
  }

  @protected
  Condition<T>? parseStringCondition<T>(
    StringFilter? filter,
    QueryStringProperty<T> prop,
  ) => filter?.map(
    equals: (f) => prop.equals(f.input),
    contains: (f) => prop.contains(f.input, caseSensitive: false),
  );

  @protected
  Condition<T>? parseIntCondition<T>(IntFilter? filter, QueryIntegerProperty<T> prop) =>
      filter?.map(
        equals: (f) => prop.equals(f.input),
        lessThan: (f) => prop.lessThan(f.input),
        greaterThan: (f) => prop.greaterThan(f.input),
      );

  @protected
  Condition<T>? parseDateTimeCondition<T>(
    DateTimeFilter? filter,
    QueryDateProperty<T> prop,
  ) => filter?.map(
    equals: (f) => prop.equals(f.input.millisecondsSinceEpoch),
    beforeThan: (f) => prop.lessThan(f.input.millisecondsSinceEpoch),
    afterThan: (f) => prop.greaterThan(f.input.millisecondsSinceEpoch),
  );
}
