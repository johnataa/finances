import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'app/di.dart';
import 'app/layout/scaffold.dart';
import 'app/layout/theme/theme.dart';
import 'app/layout/theme/theme_cubit.dart';
import 'app/navigation/pages.dart';
import 'app/provider.dart';
import 'features/schedule/presentation/schedule_screen.dart';
import 'features/settings/presentation/settings_screen.dart';
import 'features/transaction/presentation/transaction_screen.dart';

final GetIt sl = GetIt.instance;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await sl.configureAppDependencies();
  runApp(const FinanceApp());
}

class FinanceApp extends StatelessWidget {
  const FinanceApp({super.key});

  @override
  Widget build(BuildContext context) => AppProvider(
    child: BlocBuilder<ThemeCubit, ThemeMode>(
      builder: (context, themeMode) => MaterialApp(
        title: 'Finances',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: themeMode,
        home: AppScaffold(
          pages: {
            Pages.transactions: const TransactionScreen(),
            Pages.schedules: const ScheduleScreen(),
            Pages.settings: const SettingsScreen(),
          },
        ),
      ),
    ),
  );
}
