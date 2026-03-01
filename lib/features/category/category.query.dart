import '../../shared/abstractions/filter.dart';
import '../../shared/abstractions/order_by.dart';
import '../../shared/base/base_filter.dart';

class CategoryFilter extends BaseFilter {
  final StringFilter? name;

  const CategoryFilter.by({
    super.logic,
    super.id,
    super.createdAt,
    super.updatedAt,
    this.name,
  });
}

enum CategoryField implements IOrderField { id, createdAt, updatedAt, name }
