import 'package:flutter/material.dart';

import 'enum/theme_enum.dart';
import 'extension/theme_enum_extension.dart';

abstract class IThemeManager {
  late ThemeData currentTheme;
  late ThemeEnum currentThemeEnum;
  void changeTheme(ThemeEnum theme);
}

class ThemeManager extends ChangeNotifier implements IThemeManager {
  ThemeManager._();
  static ThemeManager? _instance;

  static final ThemeManager instance = _instance ??= ThemeManager._();

  @override
  ThemeData currentTheme = ThemeEnum.LIGHT.generateTheme;
  @override
  ThemeEnum currentThemeEnum = ThemeEnum.LIGHT;

  @override
  void changeTheme(ThemeEnum newTheme) {
    if (newTheme != currentThemeEnum) {
      currentTheme = newTheme.generateTheme;
      currentThemeEnum = newTheme;
      notifyListeners();
    }
    return;
  }
}
