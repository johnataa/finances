import 'package:objectbox/objectbox.dart';

import '../../../../../features/shared/base_account/category/category.dart';
import '../../../../../features/shared/meta/meta.dart';
import '../../../../../features/shared/name/name.dart';

@Entity()
final class CategoryBM {
  @Id()
  int id = 0;

  @Property(type: PropertyType.date)
  DateTime? createdAt;

  @Property(type: PropertyType.date)
  DateTime? updatedAt;

  String name;
  String icon;
  String color;

  CategoryBM(this.id, this.createdAt, this.updatedAt, this.name, this.icon, this.color);

  factory CategoryBM.fromEntity(Category entity) => CategoryBM(
    entity.meta.id,
    entity.meta.createdAt,
    entity.meta.updatedAt,
    entity.name.value,
    entity.icon,
    entity.color,
  );

  Category toEntity() => Category(
    meta: Meta(id: id, createdAt: createdAt, updatedAt: updatedAt),
    name: Name.create(name),
    icon: icon,
    color: color,
  );
}

extension CategoryListExtension on List<CategoryBM> {
  List<Category> toEntities() => map((categoryMap) => categoryMap.toEntity()).toList();
}

extension CategoryListAsyncExtension on Future<List<CategoryBM>> {
  Future<List<Category>> toEntities() async => (await this).toEntities();
}
