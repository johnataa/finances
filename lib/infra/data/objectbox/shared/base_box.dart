import 'package:flutter/foundation.dart';
import 'package:objectbox/objectbox.dart';

import 'box_model.dart';
import 'mapper.dart';
import 'query_parser.dart';

abstract class BaseBox<TModel extends IBoxModel, TDomain, TFilter, TOrder> {
  final Store _store;
  final Box<TModel> _box;
  final IMapper<TDomain, TModel> _mapper;

  BaseBox(this._store, this._mapper) : _box = _store.box<TModel>();

  void dispose() => _store.close();

  Stream<List<TDomain>> watch({TFilter? filter, TOrder? orderBy}) => _filter(
    filter,
    orderBy,
  ).watch(triggerImmediately: true).map((event) => _mapper.toEntities(event.find()));

  Future<List<TDomain>> getAll({TFilter? filter, TOrder? orderBy}) =>
      _mapper.toFutureEntities(_filter(filter, orderBy).build().findAsync());

  Future<bool> delete(int id) => _box.removeAsync(id);

  Future<TDomain?> persist(TDomain entity) async {
    final model = _mapper.toBoxModel(entity);

    if (model.id == 0) {
      model.createdAt = .now();
    } else {
      model.updatedAt = .now();
    }

    final id = await _box.putAsync(model);
    final freshModel = await _box.getAsync(id);
    return _mapper.toEntityOrNull(freshModel);
  }

  @protected
  QueryParser<TModel> parseQuery(TFilter? filter, TOrder? orderBy);

  QueryBuilder<TModel> _filter<T>(TFilter? filter, TOrder? orderBy) {
    final queryParser = parseQuery(filter, orderBy);
    final query = _box.query(queryParser.condition);
    return switch (queryParser.order) {
      OrderProp<TModel> op => query.order(op.prop, flags: op.flag),
      _ => query,
    };
  }
}
