import 'package:objectbox/objectbox.dart';

import '../../../../../features/shared/base_account/category/category.dart';
import '../../../../../features/shared/meta/meta.dart';
import '../../../../../features/shared/name/name.dart';
import '../base/base_box_model.dart';

@Entity()
final class CategoryBM implements BaseBoxModel<Category> {
  @Id()
  @override
  int id = 0;

  @Property(type: PropertyType.date)
  @override
  DateTime? createdAt;

  @Property(type: PropertyType.date)
  @override
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

  @override
  Category toEntity() => Category(
    meta: Meta(id: id, createdAt: createdAt, updatedAt: updatedAt),
    name: Name.create(name),
    icon: icon,
    color: color,
  );
}
