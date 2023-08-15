import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/core/constants/enums/locale_keys_enum.dart';
import 'package:kartal/kartal.dart';
import 'package:mobx/mobx.dart';

import '../../../core/base/model/base_view_model.dart';
import '../../../core/init/navigation/navigation_enums.dart';

part 'splash_view_model.g.dart';

class SplashViewModel = _SplashViewModelBase with _$SplashViewModel;

abstract class _SplashViewModelBase extends BaseViewModel with Store {
  @override
  void setContext(BuildContext context) => viewModelContext = context;
  @override
  void init() {
    navigateToHome();
  }

  // It checks whether you are logged into the application for the first time and directs you to the home or onboard pages.
  Future<void> navigateToHome() async {
    await Future<void>.delayed(viewModelContext.duration.durationSlow);
    localeManager.getBoolValue(PreferencesKeys.IS_FIRST_LOGIN)
        ? await navigationService.navigateToPageClear<void>(path: NavigationEnums.mainTab.rawValue)
        : await navigationService.navigateToPageClear<void>(path: NavigationEnums.onboard.rawValue);
  }
}
