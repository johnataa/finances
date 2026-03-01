import 'package:objectbox/objectbox.dart';

import '../shared/box_model.dart';
import 'schedule_box.model.dart';

@Entity()
final class AccountBM implements IBoxModel {
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
  int balance;
  int balanceCurrency;

  @Backlink('account')
  final schedules = ToMany<ScheduleBM>();
  final regularAccount = ToOne<RegularAccountBM>();
  final savingsAccount = ToOne<SavingsAccountBM>();

  AccountBM({
    this.id = 0,
    this.createdAt,
    this.updatedAt,
    required this.name,
    required this.balance,
    required this.balanceCurrency,
  });
}

@Entity()
final class RegularAccountBM {
  @Id()
  int id = 0;

  final account = ToOne<AccountBM>();

  RegularAccountBM({this.id = 0});
}

@Entity()
final class SavingsAccountBM {
  @Id()
  int id = 0;

  int savingsGoal;
  int? amountToCover;
  int? amountToCoverCurrency;
  int? coverageInMonth;

  final account = ToOne<AccountBM>();

  SavingsAccountBM({
    this.id = 0,
    required this.savingsGoal,
    this.amountToCover,
    this.amountToCoverCurrency,
    this.coverageInMonth,
  });
}
