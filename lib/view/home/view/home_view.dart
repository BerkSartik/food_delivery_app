import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/core/init/lang/locale_keys.g.dart';
import 'package:flutter_food_delivery_app/view/home/viewmodel/home_view_model.dart';

import '../../../core/base/view/base_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<HomeViewModel>(
      viewModel: HomeViewModel(),
      onModelReady: (model) {
        model
          ..setContext(context)
          ..init();
      },
      onPageBuilder: (BuildContext context, HomeViewModel viewModel) => Scaffold(
        body: Center(child: Text(LocaleKeys.navigation_tabs_home.tr())),
      ),
    );
  }
}
