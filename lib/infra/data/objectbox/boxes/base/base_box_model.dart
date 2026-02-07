abstract interface class BaseBoxModel<TDomain> {
  int id = 0;
  DateTime? createdAt;
  DateTime? updatedAt;
  TDomain toEntity();
}
