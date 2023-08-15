import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../core/base/view/base_widget.dart';
import '../../../core/init/lang/locale_keys.g.dart';
import '../viewmodel/profile_view_model.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<ProfileViewModel>(
      viewModel: ProfileViewModel(),
      onModelReady: (model) {
        model
          ..setContext(context)
          ..init();
      },
      onPageBuilder: (BuildContext context, ProfileViewModel viewModel) => Scaffold(
        body: Center(child: Text(LocaleKeys.navigation_tabs_profile.tr())),
      ),
    );
  }
}
