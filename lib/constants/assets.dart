abstract class AppAssets {
  static const svg = _Svg();
  static const images = _Images();
}

class _Svg {
  const _Svg();

  final String backButton = 'assets/svg/back_button.svg';
  final String location = 'assets/svg/location.svg';
  final String navigationButton = 'assets/svg/navigation_button.svg';
  final String point = 'assets/svg/point.svg';
  final String mapSelection = 'assets/svg/map_selection.svg';
}

class _Images {
  const _Images();

  final String location = 'assets/images/location.png';
  final String point = 'assets/images/point.png';
  final String navigationButton = 'assets/images/navigation_button.png';
}
