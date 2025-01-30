import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/base/cubit/base_cubit.dart';
import 'core/base/cubit/base_state.dart';
import 'core/di/di.dart';
import 'core/theme/theme.dart';
import 'features/auth/presentation/screens/signin_screen.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final theme = getIt<BaseCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BaseCubit, BaseState>(
      bloc: theme,
      builder: (context, state) {
        print('dbg state type: ${state.runtimeType}');
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeClass.lightTheme,
          darkTheme: ThemeClass.darkTheme,
          themeMode: state.themeMode,
          home: const SignInScreen(),
        );
      },
    );
  }
}
