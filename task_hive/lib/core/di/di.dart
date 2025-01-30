import 'package:get_it/get_it.dart';

import '../base/cubit/base_cubit.dart';
import '../base/cubit/base_state.dart';

final GetIt getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton<BaseCubit>(() => BaseCubit(BaseState()));
}
