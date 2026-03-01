import '../../shared/base/base.dart';
import '../../shared/contracts/entity.dart';
import '../../shared/money/money.dart';
import '../../shared/name/name.dart';
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
