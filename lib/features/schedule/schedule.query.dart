import '../../shared/abstractions/filter.dart';
import '../../shared/abstractions/order_by.dart';
import '../../shared/base/base_filter.dart';
import '../../shared/money/money.query.dart';

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
