import 'package:flutter/material.dart';

import '../../init/cache/locale_manager.dart';

abstract class BaseViewModel {
  late BuildContext viewModelContext;

  void setContext(BuildContext context);
  void init();

  LocaleManager localeManager = LocaleManager.instance;
}
