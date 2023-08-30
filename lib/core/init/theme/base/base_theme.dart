import 'package:flutter/material.dart';

@immutable
final class BaseTheme {
  // base colors
  static const Color primaryColor = Color(0xffff4201);
  static const Color secondaryColor = Color(0xffffe8e0);
  static const Color error = Color(0xFFFF0101);
  static const Color scaffoldBackgroundColor = Color(0xffF5F5F5);
  static const Color textColor = Color(0xff1A0700);
  static const Color gray = Color(0xff9D9693);
  static const Color primaryColorDark = Color(0xff1A0700);
  // base text styles
  static const TextStyle displayLarge = TextStyle(
    color: textColor,
    fontSize: 57,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );
  static const TextStyle displayMedium = TextStyle(
    color: textColor,
    fontSize: 45,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );
  static const TextStyle displaySmall = TextStyle(
    color: textColor,
    fontSize: 36,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );

  static const TextStyle headlineLarge = TextStyle(
    color: textColor,
    fontSize: 32,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );
  static const TextStyle headlineMedium = TextStyle(
    color: textColor,
    fontSize: 28,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );
  static const TextStyle headlineSmall = TextStyle(
    color: textColor,
    fontSize: 24,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );

  static const TextStyle titleLarge = TextStyle(
    color: textColor,
    fontSize: 22,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );
  static const TextStyle titleMedium = TextStyle(
    color: textColor,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );
  static const TextStyle titleSmall = TextStyle(
    color: textColor,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );

  static const TextStyle labelLarge = TextStyle(
    color: textColor,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );
  static const TextStyle labelMedium = TextStyle(
    color: textColor,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );
  static const TextStyle labelSmall = TextStyle(
    color: textColor,
    fontSize: 11,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );

  static const TextStyle bodyLarge = TextStyle(
    color: textColor,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );
  static const TextStyle bodyMedium = TextStyle(
    color: textColor,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );
  static const TextStyle bodySmall = TextStyle(
    color: textColor,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );
}
