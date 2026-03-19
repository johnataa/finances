import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'app/app_provider.dart';
import 'features/category/category.repository.dart';
import 'features/category/cubit/category_cubit.dart';
import 'features/category/ui/category_screen.dart';
import 'infra/di.dart';

final GetIt sl = GetIt.instance;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await sl.configureInfraDependencies();

  // BLoCs
  sl.registerFactory(() => CategoryCubit(sl<ICategoryRepository>()));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => AppProvider(
    child: MaterialApp(
      title: 'Finances',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const CategoryScreen(),
    ),
  );
}
