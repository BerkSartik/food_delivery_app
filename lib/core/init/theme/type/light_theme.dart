import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../app_theme.dart';
import '../base/base_theme.dart';

class ThemeLight extends AppTheme {
  ThemeLight._();
  static ThemeLight? _instance;
  static final ThemeLight instance = _instance ??= ThemeLight._();

  @override
  ThemeData? get theme => ThemeData(
        brightness: Brightness.light,
        primaryColor: BaseTheme.primaryColor,
        primaryColorDark: BaseTheme.primaryColorDark,
        scaffoldBackgroundColor: BaseTheme.scaffoldBackgroundColor,
        dividerColor: BaseTheme.gray,
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: BaseTheme.primaryColor,
          onPrimary: BaseTheme.primaryColor,
          secondary: BaseTheme.secondaryColor,
          onSecondary: BaseTheme.secondaryColor,
          error: BaseTheme.error,
          onError: BaseTheme.error,
          background: BaseTheme.scaffoldBackgroundColor,
          onBackground: BaseTheme.scaffoldBackgroundColor,
          surface: BaseTheme.primaryColor,
          onSurface: BaseTheme.primaryColor,
        ),
        fontFamily: GoogleFonts.redHatDisplay().fontFamily,
        textTheme: const TextTheme(
          displayLarge: BaseTheme.displayLarge,
          displayMedium: BaseTheme.displayMedium,
          displaySmall: BaseTheme.displaySmall,
          headlineLarge: BaseTheme.headlineLarge,
          headlineMedium: BaseTheme.headlineMedium,
          headlineSmall: BaseTheme.headlineSmall,
          titleLarge: BaseTheme.titleLarge,
          titleMedium: BaseTheme.titleMedium,
          titleSmall: BaseTheme.titleSmall,
          labelLarge: BaseTheme.labelLarge,
          labelMedium: BaseTheme.labelMedium,
          labelSmall: BaseTheme.labelSmall,
          bodyLarge: BaseTheme.bodyLarge,
          bodyMedium: BaseTheme.bodyMedium,
          bodySmall: BaseTheme.bodySmall,
        ),
      );
}
