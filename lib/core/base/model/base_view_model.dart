import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../init/cache/locale_manager.dart';
import '../../init/navigation/navigation_manager.dart';

abstract class BaseViewModel {
  late BuildContext viewModelContext;

  void setContext(BuildContext context);
  void init();

  LocaleManager localeManager = LocaleManager.instance;

  late final navigationService = viewModelContext.read<NavigationService>();
}
