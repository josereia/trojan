import 'package:calculator/ui/themes/app_dark_theme.dart';
import 'package:calculator/ui/themes/app_light_theme.dart';
import 'package:calculator/ui/themes/app_theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTheme {
  static getTheme({required bool isDark}) {
    late ThemeData baseTheme;
    late ThemeColors colors;
    const ThemeMetrics metrics = ThemeMetrics(
      padding: 16,
      smallPadding: 6,
      gap: 16,
      smallGap: 6,
      borderWidth: 0.6,
      iconSize: 18,
      blurAmount: 100,
      borderRadius: Radius.circular(6),
    );

    if (isDark) {
      colors = AppDarkTheme.colors;
      baseTheme = AppDarkTheme.baseTheme;
    } else {
      colors = AppLightTheme.colors;
      baseTheme = AppLightTheme.baseTheme;
    }

    return baseTheme.copyWith(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: colors.primary,
        primary: colors.primary,
        onPrimary: colors.onPrimary,
        secondary: colors.secondary,
        onSecondary: colors.onSecondary,
        shadow: colors.shadow,
        background: colors.background,
        onBackground: colors.background,
      ),
      primaryColor: colors.primary,
      dividerColor: colors.border,
      shadowColor: colors.shadow,
      scaffoldBackgroundColor: colors.background,
      iconTheme: IconThemeData(size: metrics.iconSize),
      textTheme: GoogleFonts.robotoTextTheme(baseTheme.textTheme).copyWith(
        bodySmall: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.normal,
          color: colors.text,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: colors.text,
        ),
        bodyLarge: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: colors.text,
        ),
        titleSmall: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: colors.text,
        ),
        titleMedium: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: colors.text,
        ),
        titleLarge: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: colors.text,
        ),
        headlineSmall: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: colors.text,
        ),
        headlineMedium: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.bold,
          color: colors.text,
        ),
        headlineLarge: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: colors.text,
        ),
      ),
      extensions: [
        colors,
        metrics,
      ],
    );
  }
}
