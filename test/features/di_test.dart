import 'package:finances/features/account/account.repository.dart';
import 'package:finances/features/category/category.repository.dart';
import 'package:finances/features/category/cubit/category_cubit.dart';
import 'package:finances/features/di.dart';
import 'package:finances/features/schedule/schedule.repository.dart';
import 'package:finances/features/settings/settings.repository.dart';
import 'package:finances/features/transaction/transaction.repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';

class MockAccountRepository extends Mock implements IAccountRepository {}
class MockCategoryRepository extends Mock implements ICategoryRepository {}
class MockScheduleRepository extends Mock implements IScheduleRepository {}
class MockTransactionRepository extends Mock implements ITransactionRepository {}
class MockSettingsRepository extends Mock implements ISettingsRepository {}

void main() {
  final sl = GetIt.instance;

  setUp(() {
    sl.reset();
    // Register mock repositories for the feature DI to use
    sl.registerSingleton<IAccountRepository>(MockAccountRepository());
    sl.registerSingleton<ICategoryRepository>(MockCategoryRepository());
    sl.registerSingleton<IScheduleRepository>(MockScheduleRepository());
    sl.registerSingleton<ITransactionRepository>(MockTransactionRepository());
    sl.registerSingleton<ISettingsRepository>(MockSettingsRepository());
  });

  group('FeaturesDI', () {
    test('configureFeatureDependencies registers CategoryCubit factory', () {
      // Act
      sl.configureFeatureDependencies();
      
      // Assert
      expect(sl.isRegistered<CategoryCubit>(), isTrue);
      
      final cubit1 = sl<CategoryCubit>();
      final cubit2 = sl<CategoryCubit>();
      
      expect(cubit1, isNot(same(cubit2))); // Should be a factory
    });
  });
}
