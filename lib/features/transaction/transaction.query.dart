import '../../core/abstractions/filter.dart';
import '../../core/abstractions/order_by.dart';
import '../../core/domain/base/base_filter.dart';
import '../../core/domain/money/money.query.dart';

class TransactionFilter extends BaseFilter {
  final StringFilter? name;
  final MoneyFilter? amount;
  final IntFilter? type;
  final IntFilter? status;
  final IntFilter? accountId;
  final IntFilter? categoryId;
  final IntFilter? scheduleId;
  final DateTimeFilter? date;

  const TransactionFilter.by({
    super.logic,
    super.id,
    super.createdAt,
    super.updatedAt,
    this.name,
    this.amount,
    this.type,
    this.status,
    this.accountId,
    this.categoryId,
    this.scheduleId,
    this.date,
  });
}

enum TransactionField implements IOrderField {
  id,
  createdAt,
  updatedAt,
  name,
  amount,
  type,
  status,
  accountId,
  categoryId,
  scheduleId,
  date,
}
