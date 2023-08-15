import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/app/color_constants.dart';
import '../app_theme.dart';

class ThemeLight extends AppTheme {
  ThemeLight._();
  static ThemeLight? _instance;
  static final ThemeLight instance = _instance ??= ThemeLight._();

  @override
  ThemeData? get theme => ThemeData(
        brightness: Brightness.light,
        primaryColor: ColorConstants.Primary,
        primaryColorLight: const Color(0xffd8d1fa),
        primaryColorDark: const Color(0xff230e8b),
        canvasColor: ColorConstants.Background,
        scaffoldBackgroundColor: ColorConstants.Background,
        bottomAppBarTheme: const BottomAppBarTheme(
          color: Color(0xffffffff),
        ),
        cardColor: const Color(0xffffffff),
        dividerColor: const Color(0x1f000000),
        highlightColor: const Color(0x66bcbcbc),
        splashColor: const Color(0x66c8c8c8),
        unselectedWidgetColor: ColorConstants.Black,
        disabledColor: const Color(0x61000000),
        toggleButtonsTheme: const ToggleButtonsThemeData(
          selectedColor: Color(0xff2f12ba),
        ),
        secondaryHeaderColor: const Color(0xffebe8fd),
        // backgroundColor: const Color(0xffb0a2f6),
        dialogBackgroundColor: const Color(0xffffffff),
        indicatorColor: const Color(0xff3b17e8),
        hintColor: ColorConstants.Black,
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
            color: ColorConstants.Black,
            fontSize: 57,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          displayMedium: TextStyle(
            color: ColorConstants.Black,
            fontSize: 45,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          displaySmall: TextStyle(
            color: ColorConstants.Black,
            fontSize: 36,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          headlineLarge: TextStyle(
            color: ColorConstants.Black,
            fontSize: 32,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          headlineMedium: TextStyle(
            color: ColorConstants.Black,
            fontSize: 28,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          headlineSmall: TextStyle(
            color: ColorConstants.Black,
            fontSize: 24,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          titleLarge: TextStyle(
            color: ColorConstants.Black,
            fontSize: 22,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          titleMedium: TextStyle(
            color: ColorConstants.Black,
            fontSize: 16,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          titleSmall: TextStyle(
            color: ColorConstants.Black,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          labelLarge: TextStyle(
            color: ColorConstants.Black,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          labelMedium: TextStyle(
            color: ColorConstants.Black,
            fontSize: 12,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          labelSmall: TextStyle(
            color: ColorConstants.Black,
            fontSize: 11,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          bodyLarge: TextStyle(
            color: ColorConstants.Black,
            fontSize: 16,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          bodyMedium: TextStyle(
            color: ColorConstants.Black,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          bodySmall: TextStyle(
            color: ColorConstants.Black,
            fontSize: 12,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
        ),
      );
}
