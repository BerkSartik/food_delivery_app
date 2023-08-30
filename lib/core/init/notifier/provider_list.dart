import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../navigation/navigation_manager.dart';
import '../theme/theme_manager.dart';

class ApplicationProvider {
  ApplicationProvider._init();
  static ApplicationProvider? _instance;

  static ApplicationProvider get instance => _instance ??= ApplicationProvider._init();

  List<SingleChildWidget> singleItems = [];
  List<SingleChildWidget> dependItems = [
    Provider(create: (context) => NavigationService()),
    ChangeNotifierProvider(create: (_) => ThemeManager.instance),
  ];
  List<SingleChildWidget> uiChangesItems = [];
}
