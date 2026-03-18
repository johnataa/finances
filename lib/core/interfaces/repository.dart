abstract interface class IRepository<TModel, TFilter, TOrder> {
  Stream<List<TModel>> watch({TFilter? filter, TOrder? orderBy});
  Future<List<TModel>> getAll({TFilter? filter, TOrder? orderBy});
  Future<TModel?> persist(TModel entity);
  Future<bool> delete(int id);
  void dispose();
}
