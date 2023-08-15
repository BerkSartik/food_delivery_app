import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kartal/kartal.dart';

import '../../../../core/base/view/base_widget.dart';
import '../../../../core/constants/app/color_constants.dart';
import '../../../../core/init/lang/locale_keys.g.dart';
import '../model/onboard_model.dart';
import '../viewmodel/onboard_view_model.dart';

class OnboardView extends StatelessWidget {
  const OnboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<OnboardViewModel>(
      viewModel: OnboardViewModel(),
      onModelReady: (model) {
        model
          ..setContext(context)
          ..init();
      },
      onPageBuilder: (BuildContext context, OnboardViewModel viewModel) => Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 9,
              child: buildPageView(viewModel),
            ),
            Expanded(
              child: buildRowNavigation(viewModel, context),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPageView(OnboardViewModel viewModel) {
    return PageView.builder(
      controller: viewModel.pageController,
      itemCount: viewModel.onBoardItems.length,
      onPageChanged: (value) {
        viewModel.changeCurrentIndex(value);
      },
      itemBuilder: (context, index) => buildColumnBody(context, viewModel.onBoardItems[index]),
    );
  }

  Widget buildColumnBody(BuildContext context, OnboardModel model) {
    return Column(
      children: [
        Expanded(
          flex: 7,
          child: buildSvg(model.imagePath),
        ),
        Expanded(
          flex: 2,
          child: buildColumnText(context, model),
        ),
      ],
    );
  }

  Widget buildSvg(String imagePath) {
    return SvgPicture.asset(
      imagePath,
    );
  }

  Widget buildColumnText(BuildContext context, OnboardModel model) {
    return Column(
      children: [
        Padding(
          padding: context.padding.onlyBottomLow,
          child: buildColumnTextTitle(model, context),
        ),
        Padding(
          padding: context.padding.horizontalMedium,
          child: buildColumnTextDescription(model, context),
        ),
      ],
    );
  }

  Widget buildColumnTextTitle(OnboardModel model, BuildContext context) {
    return Text(
      model.title.tr(),
      style: context.general.textTheme.displaySmall!.copyWith(
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget buildColumnTextDescription(OnboardModel model, BuildContext context) {
    return Text(
      model.description.tr(),
      style: context.general.textTheme.titleMedium!.copyWith(
        color: ColorConstants.GRAY_1,
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget buildRowNavigation(OnboardViewModel viewModel, BuildContext context) {
    return Padding(
      padding: context.padding.horizontalNormal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: viewModel.onBoardItems.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: context.padding.low,
                child: Observer(
                  builder: (_) {
                    return CircleAvatar(
                      backgroundColor: context.general.appTheme.primaryColor.withOpacity(
                        viewModel.currentIndex == index ? 1 : 0.3,
                      ),
                      radius: viewModel.currentIndex == index ? 6 : 4,
                    );
                  },
                ),
              );
            },
          ),
          Observer(
            builder: (_) {
              return TextButton(
                onPressed: () {
                  viewModel.currentIndex == viewModel.onBoardItems.length - 1
                      ? viewModel.completeToOnboard()
                      : viewModel.changeCurrentIndex(viewModel.currentIndex + 1);
                },
                child: Text(
                  viewModel.currentIndex != viewModel.onBoardItems.length - 1
                      ? LocaleKeys.onboard_navigation_skip.tr()
                      : LocaleKeys.onboard_navigation_end.tr(),
                  style: context.general.textTheme.titleMedium!.copyWith(
                    color: context.general.appTheme.primaryColor,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
