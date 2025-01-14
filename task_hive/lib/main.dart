import 'package:flutter/material.dart';
import 'package:task_hive/core/navigation/router_config.dart';
import 'package:task_hive/core/theme/my_theme.dart';
import 'package:task_hive/features/auth/presentation/screens/signin_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Task Hive',
      theme: MyThemeClass.lightTheme,
      routerConfig: MyRouterConfig.router,
    );
  }
}
