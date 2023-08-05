import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../app_theme.dart';

class ThemeLight extends AppTheme {
  ThemeLight._();
  static ThemeLight? _instance;
  static final ThemeLight instance = _instance ??= ThemeLight._();

  @override
  ThemeData? get theme => ThemeData(
        brightness: Brightness.light,
        primaryColor: const Color(0xff9784f3),
        primaryColorLight: const Color(0xffd8d1fa),
        primaryColorDark: const Color(0xff230e8b),
        canvasColor: const Color(0xfffafafa),
        scaffoldBackgroundColor: const Color(0xfffafafa),
        bottomAppBarTheme: const BottomAppBarTheme(
          color: Color(0xffffffff),
        ),
        cardColor: const Color(0xffffffff),
        dividerColor: const Color(0x1f000000),
        highlightColor: const Color(0x66bcbcbc),
        splashColor: const Color(0x66c8c8c8),
        unselectedWidgetColor: const Color(0x8a000000),
        disabledColor: const Color(0x61000000),
        toggleButtonsTheme: const ToggleButtonsThemeData(
          selectedColor: Color(0xff2f12ba),
        ),
        secondaryHeaderColor: const Color(0xffebe8fd),
        // backgroundColor: const Color(0xffb0a2f6),
        dialogBackgroundColor: const Color(0xffffffff),
        indicatorColor: const Color(0xff3b17e8),
        hintColor: const Color(0x8a000000),
        // errorColor: const Color(0xffd32f2f),
        buttonTheme: const ButtonThemeData(
          padding: EdgeInsets.only(left: 16, right: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(2)),
          ),
        ),
        fontFamily: GoogleFonts.redHatDisplay().fontFamily,
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: Color(0x8a000000),
            fontSize: 57,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          displayMedium: TextStyle(
            color: Color(0x8a000000),
            fontSize: 45,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          displaySmall: TextStyle(
            color: Color(0x8a000000),
            fontSize: 36,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          headlineLarge: TextStyle(
            color: Color(0x8a000000),
            fontSize: 32,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          headlineMedium: TextStyle(
            color: Color(0x8a000000),
            fontSize: 28,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          headlineSmall: TextStyle(
            color: Color(0xdd000000),
            fontSize: 24,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          titleLarge: TextStyle(
            color: Color(0xdd000000),
            fontSize: 22,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          titleMedium: TextStyle(
            color: Color(0xdd000000),
            fontSize: 16,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          titleSmall: TextStyle(
            color: Color(0xff000000),
            fontSize: 14,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          labelLarge: TextStyle(
            color: Color(0xdd000000),
            fontSize: 14,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          labelMedium: TextStyle(
            color: Color(0xff000000),
            fontSize: 12,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          labelSmall: TextStyle(
            color: Color(0xff000000),
            fontSize: 11,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          bodyLarge: TextStyle(
            color: Color(0xdd000000),
            fontSize: 16,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          bodyMedium: TextStyle(
            color: Color(0xdd000000),
            fontSize: 14,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          bodySmall: TextStyle(
            color: Color(0x8a000000),
            fontSize: 12,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
        ),
      );
}
