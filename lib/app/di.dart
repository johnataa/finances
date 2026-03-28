import 'package:get_it/get_it.dart';

import '../features/di.dart';
import '../infra/di.dart';

extension AppDI on GetIt {
  Future<void> configureAppDependencies() async {
    await configureInfraDependencies();
    configureFeatureDependencies();
  }
}
