// ignore_for_file: strict_raw_type

import 'package:flutter/material.dart';

class FadeRoute extends PageRouteBuilder {
  FadeRoute({this.page, super.settings})
      : super(
          pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) => page!,
          transitionDuration: const Duration(milliseconds: 1000),
          transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) =>
              FadeTransition(opacity: animation, child: child),
        );
  final Widget? page;
}
