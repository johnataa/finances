import '../../core/domain/base/base.dart';
import '../../core/interfaces/entity.dart';
import '../../core/domain/money/money.dart';
import '../../core/domain/name/name.dart';
import '../schedule/schedule.dart';
import '../transaction/transaction.dart';

abstract class Account implements IEntity {
  Base get base;
  Name get name;
  Money get balance;
  List<Schedule> get schedules;
  List<Transaction> get transactions;

  const Account();

  @override
  int get id => base.id;
}
