import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'core/constants/app/app_constants.dart';
import 'core/init/cache/locale_manager.dart';
import 'core/init/lang/language_manager.dart';
import 'core/init/navigation/navigation_manager.dart';
import 'core/init/navigation/navigation_route.dart';
import 'core/init/notifier/provider_list.dart';

Future<void> main() async {
  await _init();
  runApp(MultiProvider(
    providers: [
      ...ApplicationProvider.instance.dependItems,
    ],
    child: EasyLocalization(
      supportedLocales: LanguageManager.instance!.supportedLocales,
      path: ApplicationConstants.LANG_ASSET_PATH,
      child: const MyApp(),
    ),
  ));
}

Future<void> _init() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  LocaleManager.preferencesInit();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: Color(0xFFF5F5F5),
    systemNavigationBarIconBrightness: Brightness.dark,
    systemNavigationBarDividerColor: Colors.transparent,
    statusBarBrightness: Brightness.dark,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      onGenerateRoute: NavigationRoute().generateRoute,
      navigatorKey: context.read<NavigationService>().navigatorKey,
    );
  }
}
