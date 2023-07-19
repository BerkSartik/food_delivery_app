import 'package:flutter/material.dart';

abstract class BaseState<T extends StatefulWidget> extends State<T> {
  // INetworkManager get networkManager => VexanaManager.instance.networkManager;
  ThemeData get themeData => Theme.of(context);

  double dynamicHeight(double value) => MediaQuery.of(context).size.height * value;
  double dynamicWidth(double value) => MediaQuery.of(context).size.width * value;
}
