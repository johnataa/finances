import '../../core/abstractions/filter.dart';
import '../../core/abstractions/order_by.dart';
import '../../core/base/base_filter.dart';
import '../../core/money/money.query.dart';

class ScheduleFilter extends BaseFilter {
  final StringFilter? name;
  final MoneyFilter? amount;
  final DateTimeFilter? startDate;
  final DateTimeFilter? endDate;

  const ScheduleFilter.by({
    super.logic,
    super.id,
    super.createdAt,
    super.updatedAt,
    this.name,
    this.amount,
    this.startDate,
    this.endDate,
  });
}

enum ScheduleField implements IOrderField {
  name,
  amount,
  startDate,
  endDate,
  id,
  createdAt,
  updatedAt,
}
