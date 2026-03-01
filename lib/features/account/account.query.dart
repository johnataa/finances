import '../../shared/abstractions/filter.dart';
import '../../shared/abstractions/order_by.dart';
import '../../shared/base/base_filter.dart';

class AccountFilter extends BaseFilter {
  final StringFilter? name;

  const AccountFilter.by({
    super.logic,
    super.id,
    super.createdAt,
    super.updatedAt,
    this.name,
  });
}

enum AccountField implements IOrderField { id, createdAt, updatedAt, name }
