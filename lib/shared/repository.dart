abstract interface class Repository<TModel, TFilter, TSort> {
  Stream<List<TModel>> watch({TFilter? filter, TSort? sort});
  Future<List<TModel>> getAll({TFilter? filter, TSort? sort});
  Future<TModel> persist(TModel entity);
  Future<bool> delete(int id);
  void dispose();
}
