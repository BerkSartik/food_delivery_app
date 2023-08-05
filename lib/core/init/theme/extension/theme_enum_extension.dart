// ignore_for_file: unreachable_switch_case

import 'package:flutter/material.dart';

import '../enum/theme_enum.dart';
import '../type/dark_theme.dart';
import '../type/light_theme.dart';

extension ThemeEnumExtension on ThemeEnum {
  ThemeData get generateTheme {
    return switch (this) {
      ThemeEnum.LIGHT => ThemeLight.instance.theme!,
      ThemeEnum.DARK => ThemeDark.instance.theme!,
      _ => ThemeLight.instance.theme!
    };
  }
}
