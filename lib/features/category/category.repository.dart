import '../../core/abstractions/order_by.dart';
import '../../core/interfaces/repository.dart';
import 'category.dart';
import 'category.query.dart';

abstract interface class ICategoryRepository
    implements IRepository<Category, CategoryFilter, OrderBy<CategoryField>> {}
