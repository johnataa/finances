import 'package:finances/infra/data/objectbox/shared/box_model.dart';
import 'package:finances/shared/base/base.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
final class EntityBMMock implements IBoxModel {
  @Id()
  @override
  int id = 0;

  @Property(type: PropertyType.date)
  @override
  DateTime? createdAt;

  @Property(type: PropertyType.date)
  @override
  DateTime? updatedAt;

  String sillyProp;

  EntityBMMock({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.sillyProp,
  });

  Base toBase() => .create(id: id, createdAt: createdAt, updatedAt: updatedAt);
}
