import 'dart:io';

abstract class AppAssets {
  static const svg = _Svg();
  static final images = _Images();
}

class _Svg {
  const _Svg();

  final String navigationButton = 'assets/svg/navigation_button.svg';
  final String point = 'assets/svg/point.svg';
  final String mapSelection = 'assets/svg/map_selection.svg';
  final String currentLocation = 'assets/svg/current_location.svg';
  final String route = 'assets/svg/route.svg';
}

class _Images {
  _Images();

  final String location =
      Platform.isAndroid ? 'assets/images/location_4x.png' : 'assets/images/location.png';
  final String point =
      Platform.isAndroid ? 'assets/images/point_4x.png' : 'assets/images/point.png';
}
