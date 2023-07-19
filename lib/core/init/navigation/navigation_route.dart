import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/view/onboard/view/onboard_view.dart';

import '../../../view/splash/view/splash_view.dart';
import '../../components/card/not_found_navigation_widget.dart';
import 'animation/fade_navigate.dart';
import 'navigation_enums.dart';

class NavigationRoute {
  Route<dynamic> generateRoute(RouteSettings args) {
    switch (NavigationEnums.splash.normalValue(args.name)) {
      case NavigationEnums.splash:
        return _normalNavigate(const SplashView());
      case NavigationEnums.onboard:
        return _fadeRouteNavigate(const OnboardView());
      default:
        return _normalNavigate(const NotFoundNavigationWidget());
    }
  }

  MaterialPageRoute _normalNavigate(Widget widget, {RouteSettings? settings, bool isFullScreen = false}) {
    return MaterialPageRoute(builder: (context) => widget, settings: settings, fullscreenDialog: isFullScreen);
  }

  PageRoute _fadeRouteNavigate(Widget widget, {RouteSettings? settings}) {
    return FadeRoute(page: widget, settings: settings);
  }
}
