enum NavigationEnums {
  splash,
  onboard,
  mainTab,
}

extension NavigationConstantsValue on NavigationEnums {
  String get rawValue {
    return switch (this) {
      NavigationEnums.splash => '/',
      NavigationEnums.onboard => 'onboard',
      NavigationEnums.mainTab => 'mainTab',
    };
  }

  NavigationEnums normalValue(String? val) {
    return switch (val) {
      '/' => NavigationEnums.splash,
      'onboard' => NavigationEnums.onboard,
      'mainTab' => NavigationEnums.mainTab,
      _ => throw Exception('$val not found in $this')
    };
  }
}
