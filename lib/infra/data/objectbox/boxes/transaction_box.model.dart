import 'package:objectbox/objectbox.dart';

import '../shared/box_model.dart';
import 'account_box.model.dart';
import 'category_box.model.dart';
import 'schedule_box.model.dart';

@Entity()
final class TransactionBM implements IBoxModel {
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
  int amount;
  int currency;
  int type;
  int status;

  @Property(type: PropertyType.date)
  DateTime? date;

  String? notes;

  final account = ToOne<AccountBM>();
  final category = ToOne<CategoryBM>();
  final schedule = ToOne<ScheduleBM>();

  TransactionBM({
    this.id = 0,
    this.createdAt,
    this.updatedAt,
    required this.name,
    required this.amount,
    required this.currency,
    required this.type,
    required this.status,
    this.date,
    this.notes,
  });
}
