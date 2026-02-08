import '../../shared/repository.dart';
import 'category.dart';
import 'category_filter.dart';

abstract interface class CategoryRepository
    implements Repository<Category, CategoryFilter, CategorySort> {}
