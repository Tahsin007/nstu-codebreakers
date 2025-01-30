import 'package:flutter/material.dart';

import 'colors.dart';
import 'elevated_button_theme.dart';
import 'input_decoration_theme.dart';
import 'text_theme.dart';

class ThemeClass {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      primary: MyLightColors.primary,
      secondary: MyLightColors.secondary,
      surface: MyLightColors.surface,
      shadow: MyLightColors.shadow,
    ),
    textTheme: MyTextTheme.myLightTextTheme,
    inputDecorationTheme: MyInputDecorationTheme.myInputDecorationTheme,
    elevatedButtonTheme: MyElevatedfButtonTheme.myElevatedfButtonTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(
      primary: MyDarkColors.primary,
      secondary: MyDarkColors.secondary,
      surface: MyDarkColors.surface,
      shadow: MyDarkColors.shadow,
    ),
    appBarTheme: const AppBarTheme(
      foregroundColor: MyLightColors.surface,
    ),
    textTheme: MyTextTheme.myDarkTextTheme,
    inputDecorationTheme: MyInputDecorationTheme.myDarkInputDecorationTheme,
    elevatedButtonTheme: MyElevatedfButtonTheme.myElevatedfButtonTheme,
  );
}
