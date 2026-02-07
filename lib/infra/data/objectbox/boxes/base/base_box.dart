import 'package:flutter/foundation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../../../features/shared/filter.dart';
import '../../../../../features/shared/meta/meta_filter.dart';
import 'base_box_model.dart';

abstract class BaseBox<TModel extends BaseBoxModel<TDomain>, TDomain, TFilter, TSort> {
  final Store _store;
  final Box<TModel> _box;

  BaseBox(this._store) : _box = _store.box<TModel>();

  void dispose() => _store.close();

  Stream<List<TDomain>> watch({TFilter? filter, TSort? sort}) => queryBuilder(
    filter,
    sort,
  ).watch(triggerImmediately: true).map((event) => event.find().toEntities());

  Future<List<TDomain>> getAll({TFilter? filter, TSort? sort}) =>
      queryBuilder(filter, sort).build().findAsync().toFutureEntities();

  Future<bool> delete(int id) => _box.removeAsync(id);

  @protected
  Future<TModel> persistAsync(TModel model) async {
    if (model.id == 0) {
      model.createdAt = DateTime.now();
    } else {
      model.updatedAt = DateTime.now();
    }

    model.id = await _box.putAsync(model);
    return model;
  }

  @protected
  QueryBuilder<TModel> queryBuilder(TFilter? filter, TSort? sort);

  @protected
  QueryBuilder<TModel> filter<T>(
    FilterLogic? logic,
    Iterable<Condition<TModel>?> conditions,
    SortBy<TModel>? sortBy,
  ) {
    final query = _box.query(_combineConditions(conditions, logic));

    if (sortBy == null) return query;

    return query.order(sortBy.prop, flags: sortBy.flags);
  }

  @protected
  Condition<T>? stringFilter<T>(StringFilter? filter, QueryStringProperty<T> prop) =>
      filter?.map(
        equals: (f) => prop.equals(f.input),
        contains: (f) => prop.contains(f.input, caseSensitive: false),
      );

  @protected
  Condition<T>? intFilter<T>(IntFilter? filter, QueryIntegerProperty<T> prop) =>
      filter?.map(
        equals: (f) => prop.equals(f.input),
        lessThan: (f) => prop.lessThan(f.input),
        greaterThan: (f) => prop.greaterThan(f.input),
      );

  @protected
  Condition<T>? dateTimeFilter<T>(DateTimeFilter? filter, QueryDateProperty<T> prop) =>
      filter?.map(
        equals: (f) => prop.equalsDate(f.input),
        beforeThan: (f) => prop.lessThanDate(f.input),
        afterThan: (f) => prop.greaterThanDate(f.input),
      );

  @protected
  SortBy<TModel> sortBy<T>(QueryProperty<TModel, T> prop, bool desc) =>
      (prop: prop, flags: desc ? 1 : 0);

  @protected
  Condition<T>? metaFilter<T>(
    MetaFilter? filter,
    QueryIntegerProperty<T> idProp,
    QueryDateProperty<T> createdAtProp,
    QueryDateProperty<T> updatedAtProp,
  ) => _combineConditions([
    intFilter(filter?.id, idProp),
    dateTimeFilter(filter?.createdAt, createdAtProp),
    dateTimeFilter(filter?.updatedAt, updatedAtProp),
  ], filter?.logic);

  @protected
  SortBy<TModel>? sortByMeta(
    QueryIntegerProperty<TModel> idProp,
    QueryDateProperty<TModel> createdAtProp,
    QueryDateProperty<TModel> updatedAtProp,
    MetaSort? metaSort,
  ) => metaSort?.map(
    id: (s) => sortBy(idProp, s.desc),
    createdAt: (s) => sortBy(createdAtProp, s.desc),
    updatedAt: (s) => sortBy(updatedAtProp, s.desc),
  );

  Condition<T>? _combineConditions<T>(
    Iterable<Condition<T>?> conditions,
    FilterLogic? logic,
  ) {
    Condition<T>? condition;

    for (final Condition<T> c in conditions.nonNulls) {
      if (condition == null) {
        condition = c;
        continue;
      }

      condition = switch (logic!) {
        FilterLogic.and => condition.and(c),
        FilterLogic.or => condition.or(c),
      };
    }

    return condition;
  }
}

typedef SortBy<T> = ({QueryProperty<T, dynamic> prop, int flags});

extension BoxModelExtension<TModel extends BaseBoxModel<TDomain>, TDomain>
    on List<TModel> {
  List<TDomain> toEntities() => map((boxModel) => boxModel.toEntity()).toList();
}

extension BoxModelAsyncExtension<TModel extends BaseBoxModel<TDomain>, TDomain>
    on Future<List<TModel>> {
  Future<List<TDomain>> toFutureEntities() async => (await this).toEntities();
}
