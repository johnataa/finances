import '../../../../../features/shared/base_account/category/category.dart';
import '../../../../../features/shared/base_account/category/category.repository.dart';
import '../../../../../features/shared/base_account/category/category_filter.dart';
import '../../gen/objectbox.g.dart';
import '../query_parser.dart';
import 'category_box_model.dart';

final class CategoryBox with QueryParser implements CategoryRepository {
  final Box<CategoryBM> _box;

  CategoryBox(Store store) : _box = store.box<CategoryBM>();

  @override
  Future<Category> persist(Category entity) async {
    final categoryModel = CategoryBM.fromEntity(entity);
    int id = await _box.putAsync(categoryModel);
    return entity.copyWith.meta(id: id);
  }

  @override
  Future<bool> delete(int id) => _box.removeAsync(id);

  @override
  Stream<List<Category>> getStream({
    CategoryFilter filter = .empty,
    CategorySort? sort,
  }) => _buildQuery(
    filter,
    sort,
  ).watch(triggerImmediately: true).map((event) => event.find().toEntities());

  @override
  Future<List<Category>> getAll({CategoryFilter filter = .empty, CategorySort? sort}) =>
      _buildQuery(filter, sort).build().findAsync().toEntities();

  QueryBuilder<CategoryBM> _buildQuery(CategoryFilter filter, CategorySort? sort) {
    QueryBuilder<CategoryBM> query = _box.query(_parseFilter(filter));
    return _parseSort(query, sort);
  }

  QueryBuilder<CategoryBM> _parseSort(
    QueryBuilder<CategoryBM> query,
    CategorySort? sort,
  ) {
    if (sort == null) return query;

    return sort.map(
      name: (s) => query.sortBy(s.desc, CategoryBM_.name),
      meta: (s) => query.sortByMeta(
        s.metaSort,
        CategoryBM_.id,
        CategoryBM_.createdAt,
        CategoryBM_.updatedAt,
      ),
    );
  }

  Condition<CategoryBM>? _parseFilter(CategoryFilter filter) {
    final conditions = [
      parseStringCondition(filter.name, CategoryBM_.name),
      parseMetaFilter(
        filter.meta,
        CategoryBM_.id,
        CategoryBM_.createdAt,
        CategoryBM_.updatedAt,
      ),
    ];

    return combineConditions(conditions.nonNulls, filter.type);
  }
}
