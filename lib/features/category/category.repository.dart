import '../../shared/abstractions/order_by.dart';
import '../../shared/contracts/repository.dart';
import 'category.dart';
import 'category.query.dart';

abstract interface class ICategoryRepository
    implements IRepository<Category, CategoryFilter, OrderBy<CategoryField>> {}
