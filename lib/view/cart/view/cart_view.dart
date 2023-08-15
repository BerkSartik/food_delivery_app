import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../core/base/view/base_widget.dart';
import '../../../core/init/lang/locale_keys.g.dart';
import '../viewmodel/cart_view_model.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<CartViewModel>(
      viewModel: CartViewModel(),
      onModelReady: (model) {
        model
          ..setContext(context)
          ..init();
      },
      onPageBuilder: (BuildContext context, CartViewModel viewModel) => Scaffold(
        body: Center(child: Text(LocaleKeys.navigation_tabs_cart.tr())),
      ),
    );
  }
}
