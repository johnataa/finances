import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:objectbox/objectbox.dart';

import '../core/interfaces/exchange_rate_provider.dart';
import '../features/account/account.repository.dart';
import '../features/category/category.repository.dart';
import '../features/schedule/schedule.repository.dart';
import '../features/settings/settings.repository.dart';
import '../features/transaction/transaction.repository.dart';
import 'adapters/exchange_rate_provider_delegate.dart';
import 'data/objectbox/boxes/account_box.dart';
import 'data/objectbox/boxes/account_box.mapper.dart';
import 'data/objectbox/boxes/category_box.dart';
import 'data/objectbox/boxes/category_box.mapper.dart';
import 'data/objectbox/boxes/schedule_box.dart';
import 'data/objectbox/boxes/schedule_box.mapper.dart';
import 'data/objectbox/boxes/settings_box.dart';
import 'data/objectbox/boxes/transaction_box.dart';
import 'data/objectbox/boxes/transaction_box.mapper.dart';
import 'data/objectbox/create_store.dart';

extension InfraDI on GetIt {
  Future<void> configureInfraDependencies() async {
    // Database/Store
    registerSingletonAsync<Store>(createStoreAsync);

    // Mappers
    registerSingleton<ScheduleBoxMapper>(ScheduleBoxMapper());
    registerLazySingleton<AccountBoxMapper>(() => AccountBoxMapper(get<ScheduleBoxMapper>()));
    registerSingleton<CategoryBoxMapper>(CategoryBoxMapper());
    registerSingleton<TransactionBoxMapper>(TransactionBoxMapper());

    // Repositories
    registerLazySingleton<IAccountRepository>(
      () => AccountBox(get<Store>(), get<AccountBoxMapper>()),
    );
    registerLazySingleton<ICategoryRepository>(
      () => CategoryBox(get<Store>(), get<CategoryBoxMapper>()),
    );
    registerLazySingleton<IScheduleRepository>(
      () => ScheduleBox(get<Store>(), get<ScheduleBoxMapper>()),
    );
    registerLazySingleton<ITransactionRepository>(
      () => TransactionBox(get<Store>(), get<TransactionBoxMapper>()),
    );
    registerLazySingleton<ISettingsRepository>(() => SettingsBox(get<Store>()));

    // Third-party API Adapters
    registerLazySingleton<http.Client>(() => http.Client());
    registerLazySingleton<IExchangeRateProvider>(
      () => ExchangeRateProviderDelegate(
        settingsRepository: get<ISettingsRepository>(),
        httpClient: get<http.Client>(),
      ),
    );

    // Ensures all async singletons (like Store) are ready before proceeding
    await allReady();
  }
}
