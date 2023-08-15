import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/view/cart/view/cart_view.dart';
import 'package:flutter_food_delivery_app/view/favorite/view/favorite_view.dart';
import 'package:flutter_food_delivery_app/view/profile/view/profile_view.dart';
import 'package:line_icons/line_icon.dart';

import '../../../core/init/lang/locale_keys.g.dart';
import '../../home/view/home_view.dart';

class _TabModel {
  _TabModel(this.page, {required this.title, required this.icon});
  final Widget page;
  final String title;
  final Widget icon;
}

class TabModels {
  TabModels.create() {
    tabItems = [
      _TabModel(
        const HomeView(),
        icon: const LineIcon.home(),
        title: LocaleKeys.navigation_tabs_home,
      ),
      _TabModel(
        const FavoriteView(),
        icon: const LineIcon.heart(),
        title: LocaleKeys.navigation_tabs_favorite,
      ),
      _TabModel(
        const CartView(),
        icon: const LineIcon.shoppingCart(),
        title: LocaleKeys.navigation_tabs_cart,
      ),
      _TabModel(
        const ProfileView(),
        icon: const LineIcon.user(),
        title: LocaleKeys.navigation_tabs_profile,
      ),
    ];
  }
  late final List<_TabModel> tabItems;
}
