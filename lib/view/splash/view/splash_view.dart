import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../core/base/view/base_widget.dart';
import '../../../core/constants/app/app_constants.dart';
import '../viewmodel/splash_view_model.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<SplashViewModel>(
      viewModel: SplashViewModel(),
      onModelReady: (model) {
        model
          ..setContext(context)
          ..init();
      },
      onPageBuilder: (BuildContext context, SplashViewModel viewModel) => Scaffold(
        body: Center(
          child: Column(
            children: [
              const Spacer(flex: 5),
              Expanded(
                flex: 3,
                child: imageWidget(context),
              ),
              Expanded(
                flex: 2,
                child: textWidget(context),
              ),
              const Spacer(flex: 4)
            ],
          ),
        ),
      ),
    );
  }

  Widget imageWidget(BuildContext context) {
    return Image.asset(
      ApplicationConstants.PROJECT_LOGO,
      width: context.sized.dynamicWidth(0.3),
      fit: BoxFit.contain,
    );
  }

  Widget textWidget(BuildContext context) {
    return Padding(
      padding: context.padding.horizontalMedium,
      child: Text(
        ApplicationConstants.PROJECT_NAME,
        style: context.general.textTheme.displaySmall?.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}
