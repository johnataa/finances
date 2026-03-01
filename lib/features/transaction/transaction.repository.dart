import '../../shared/abstractions/order_by.dart';
import '../../shared/contracts/repository.dart';
import 'transaction.dart';
import 'transaction.query.dart';

abstract interface class ITransactionRepository
    implements IRepository<Transaction, TransactionFilter, OrderBy<TransactionField>> {}
