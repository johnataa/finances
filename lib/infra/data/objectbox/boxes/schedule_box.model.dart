import 'package:objectbox/objectbox.dart';

import '../shared/box_model.dart';
import 'account_box.model.dart';
import 'category_box.model.dart';

@Entity()
final class ScheduleBM implements IBoxModel {
  @Id()
  @override
  int id;

  @Property(type: PropertyType.date)
  @override
  DateTime? createdAt;

  @Property(type: PropertyType.date)
  @override
  DateTime? updatedAt;

  String name;
  int type;

  int amount;
  int currency;

  int frequencyValue;
  int frequencyUnit;

  @Property(type: PropertyType.date)
  DateTime startDate;

  @Property(type: PropertyType.date)
  DateTime? endDate;

  final account = ToOne<AccountBM>();
  final category = ToOne<CategoryBM>();

  ScheduleBM({
    this.id = 0,
    this.createdAt,
    this.updatedAt,
    required this.name,
    required this.amount,
    required this.currency,
    required this.frequencyValue,
    required this.frequencyUnit,
    required this.type,
    required this.startDate,
    this.endDate,
  });
}
