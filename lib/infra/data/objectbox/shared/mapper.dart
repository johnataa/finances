abstract interface class IMapper<TDomain, TBoxModel> {
  TBoxModel toBoxModel(TDomain entity);
  TDomain toEntity(TBoxModel model);
}

extension MapperExtensions<TDomain, TBoxModel> on IMapper<TDomain, TBoxModel> {
  TDomain? toEntityOrNull(TBoxModel? model) => model == null ? null : toEntity(model);

  List<TDomain> toEntities(Iterable<TBoxModel> entities) => entities.map(toEntity).toList();
}

extension MapperAsyncExtension<TDomain, TBoxModel> on IMapper<TDomain, TBoxModel> {
  Future<List<TDomain>> toFutureEntities(Future<List<TBoxModel>> entities) async =>
      toEntities(await entities);
}
