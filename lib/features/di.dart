import 'package:get_it/get_it.dart';

import 'category/category.repository.dart';
import 'category/cubit/category_cubit.dart';

extension FeaturesDI on GetIt {
  void configureFeatureDependencies() {
    registerFactory(() => CategoryCubit(get<ICategoryRepository>()));
  }
}
