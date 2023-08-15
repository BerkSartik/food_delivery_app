// ignore_for_file: use_setters_to_change_properties

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../../../core/base/model/base_view_model.dart';
import '../../../../core/constants/enums/locale_keys_enum.dart';
import '../../../../core/init/lang/locale_keys.g.dart';
import '../../../../core/init/navigation/navigation_enums.dart';
import '../../../../product/constants/svg_path.dart';
import '../model/onboard_model.dart';

part 'onboard_view_model.g.dart';

class OnboardViewModel = _OnboardViewModelBase with _$OnboardViewModel;

abstract class _OnboardViewModelBase extends BaseViewModel with Store {
  List<OnboardModel> onBoardItems = [];
  late PageController pageController;

  @observable
  int currentIndex = 0;

  @override
  void setContext(BuildContext context) => viewModelContext = context;

  @override
  void init() {
    pageController = PageController();
    onBoardItems
      ..add(
        OnboardModel(
          title: LocaleKeys.onboard_first_title,
          description: LocaleKeys.onboard_first_description,
          imagePath: SVGPaths.instance!.orderFoodSVG,
        ),
      )
      ..add(
        OnboardModel(
          title: LocaleKeys.onboard_second_title,
          description: LocaleKeys.onboard_second_description,
          imagePath: SVGPaths.instance!.onTheWaySVG,
        ),
      )
      ..add(
        OnboardModel(
          title: LocaleKeys.onboard_third_title,
          description: LocaleKeys.onboard_third_description,
          imagePath: SVGPaths.instance!.reachedSVG,
        ),
      );
  }

  @action
  void changeCurrentIndex(int value) {
    currentIndex = value;
    pageController.animateToPage(
      currentIndex,
      duration: const Duration(milliseconds: 250),
      curve: Curves.ease,
    );
  }

  Future<void> completeToOnboard() async {
    await localeManager.setBoolValue(PreferencesKeys.IS_FIRST_LOGIN, true);

    await navigationService.navigateToPageClear<void>(path: NavigationEnums.mainTab.rawValue);
  }
}
