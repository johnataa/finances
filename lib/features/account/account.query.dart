import '../../core/abstractions/filter.dart';
import '../../core/abstractions/order_by.dart';
import '../../core/domain/base/base_filter.dart';

class AccountFilter extends BaseFilter {
  final StringFilter? name;

  const AccountFilter.by({super.logic, super.id, super.createdAt, super.updatedAt, this.name});
}

enum AccountField implements IOrderField { id, createdAt, updatedAt, name }
