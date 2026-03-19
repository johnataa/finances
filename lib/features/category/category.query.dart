import '../../core/abstractions/filter.dart';
import '../../core/abstractions/order_by.dart';
import '../../core/base/base_filter.dart';

class CategoryFilter extends BaseFilter {
  final StringFilter? name;

  const CategoryFilter.by({super.logic, super.id, super.createdAt, super.updatedAt, this.name});
}

enum CategoryField implements IOrderField { id, createdAt, updatedAt, name }
