enum NavigationEnums {
  splash,
  onboard,
}

extension NavigationConstantsValue on NavigationEnums {
  String get rawValue {
    switch (this) {
      case NavigationEnums.splash:
        return '/';
      case NavigationEnums.onboard:
        return 'onboard';
    }
  }

  NavigationEnums normalValue(String? val) {
    switch (val) {
      case '/':
        return NavigationEnums.splash;
      case 'onboard':
        return NavigationEnums.onboard;

      default:
        throw Exception('$val not found in $this');
    }
  }
}
