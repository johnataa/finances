import '../../shared/entity.dart';
import '../../shared/meta/meta.dart';
import '../../shared/money/money.dart';
import '../../shared/name/name.dart';
import '../schedule/schedule.dart';
import '../transaction/transaction.dart';

abstract class Account implements Entity {
  Meta get meta;
  Name get name;
  Money get balance;
  List<Schedule> get schedules;
  List<Transaction> get transactions;

  const Account();

  @override
  int get id => meta.id;
}
