abstract class AppAssets {
  static const svg = _Svg();
  static const images = _Images();
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
  const _Images();

  final String location = 'assets/images/location.png';
  final String point = 'assets/images/point.png';
}
