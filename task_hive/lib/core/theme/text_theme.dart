import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'my_light_colors.dart';

class MyTextTheme {
  static final lightTextTheme = TextTheme(
    headlineMedium: GoogleFonts.sofadiOne(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      color: MyLightColors.surface,
    ),
    headlineSmall: GoogleFonts.sofadiOne(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: MyLightColors.shadow,
    ),
    bodyLarge: GoogleFonts.sofadiOne(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: MyLightColors.dark,
    ),
    displayLarge: GoogleFonts.sofadiOne(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: MyLightColors.surface,
    ),
    bodyMedium: GoogleFonts.sofadiOne(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: MyLightColors.shadow,
    ),
    bodySmall: GoogleFonts.sofadiOne(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: MyLightColors.shadow,
    ),
  );

  static final darkTextTheme = TextTheme(
    headlineMedium: GoogleFonts.sofadiOne(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      color: MyLightColors.secondary,
    ),
    headlineSmall: GoogleFonts.sofadiOne(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: MyLightColors.tertiary,
    ),
    bodyLarge: GoogleFonts.sofadiOne(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: MyLightColors.white,
    ),
    bodyMedium: GoogleFonts.sofadiOne(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: MyLightColors.tertiary,
    ),
    bodySmall: GoogleFonts.sofadiOne(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: MyLightColors.tertiary,
    ),
  );
}
