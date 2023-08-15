class SVGPaths {
  SVGPaths._init();
  static SVGPaths? _instance;
  static SVGPaths? get instance => _instance ??= SVGPaths._init();

  final orderFoodSVG = 'order_food'.toSVG;
  final onTheWaySVG = 'on_the_way'.toSVG;
  final reachedSVG = 'delivery_reached'.toSVG;
  final error404SVG = '404_error'.toSVG;
}

extension _SVGPATH on String {
  String get toSVG => 'assets/svg/$this.svg';
}
