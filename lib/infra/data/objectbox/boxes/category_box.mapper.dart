import '../../../../features/category/category.dart';
import '../shared/base_mapper.dart';
import '../shared/mapper.dart';
import 'category_box.model.dart';

final class CategoryBoxMapper implements IMapper<Category, CategoryBM> {
  @override
  CategoryBM toBoxModel(Category entity) => CategoryBM(
    id: entity.base.id,
    createdAt: entity.base.createdAt,
    updatedAt: entity.base.updatedAt,
    name: entity.name.value,
    icon: entity.icon,
    color: entity.color,
  );

  @override
  Category toEntity(CategoryBM model) => Category(
    base: BaseMapper.toEntity(model),
    name: .create(model.name),
    icon: model.icon,
    color: model.color,
  );
}
