import 'package:objectbox/objectbox.dart';

import '../shared/box_model.dart';

@Entity()
final class CategoryBM implements IBoxModel {
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

  CategoryBM({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.name,
    required this.icon,
    required this.color,
  });
}
