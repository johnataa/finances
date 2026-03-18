import '../../core/abstractions/order_by.dart';
import '../../core/repository.dart';
import 'account.dart';
import 'account.query.dart';

abstract interface class IAccountRepository
    implements IRepository<Account, AccountFilter, OrderBy<AccountField>> {}
