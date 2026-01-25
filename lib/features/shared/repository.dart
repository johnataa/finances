abstract interface class Repository<
  TModel extends Object,
  TFilter extends Object
> {
  Stream<List<TModel>> getStream([TFilter? filter]);
  Future<List<TModel>> getAll([TFilter? filter]);
  Future<TModel> persist(TModel entity);
  Future<bool> delete(int id);
}
