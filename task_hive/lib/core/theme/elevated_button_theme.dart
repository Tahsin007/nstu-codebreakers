import 'package:flutter/material.dart';

import 'colors.dart';

class MyElevatedfButtonTheme {
  static final myElevatedfButtonTheme = ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: const WidgetStatePropertyAll(
        AppColors.brand,
      ),
      minimumSize: const WidgetStatePropertyAll(
        Size(double.infinity, 55),
      ),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      foregroundColor: const WidgetStatePropertyAll(
        Colors.white,
      ),
    ),
  );
}
