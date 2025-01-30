import 'package:flutter/material.dart';

import 'colors.dart';

class MyElevatedfButtonTheme {
  static final myElevatedfButtonTheme = ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: const WidgetStatePropertyAll(
        Color(0xFFDADBDC),
      ),
      minimumSize: const WidgetStatePropertyAll(
        Size(double.infinity, 55),
      ),
      foregroundColor: const WidgetStatePropertyAll(
        MyLightColors.secondary,
      ),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    ),
  );
}
