import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../core/base/view/base_widget.dart';
import '../../../core/init/lang/locale_keys.g.dart';
import '../viewmodel/favorite_view_model.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<FavoriteViewModel>(
      viewModel: FavoriteViewModel(),
      onModelReady: (model) {
        model
          ..setContext(context)
          ..init();
      },
      onPageBuilder: (BuildContext context, FavoriteViewModel viewModel) => Scaffold(
        body: Center(child: Text(LocaleKeys.navigation_tabs_favorite.tr())),
      ),
    );
  }
}
