import 'package:flutter/material.dart';

class LanguageManager {
  LanguageManager._init();
  static LanguageManager? _instance;

  static LanguageManager? get instance => _instance ??= LanguageManager._init();

  final enLocale = const Locale('en', 'US');

  List<Locale> get supportedLocales => [enLocale];
}
