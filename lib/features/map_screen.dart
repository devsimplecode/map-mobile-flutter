import 'dart:async';
import 'dart:io' as io;
import 'package:flutter/material.dart';
import 'package:map_flutter/constants/constants.dart';
import 'package:map_flutter/features/app_bar/main_app_bar.dart';
import 'package:map_flutter/features/app_map/app_map.dart';
import 'package:map_flutter/widgets/action_map_address.dart';
import 'package:map_flutter/widgets/buttons/back_button.dart';
import 'package:map_flutter/widgets/buttons/current_location_button.dart';
import 'package:navigation_with_mapbox/navigation_with_mapbox.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final _navigationWithMapboxPlugin = NavigationWithMapbox();

  MapboxOptions? _options;

  late Stream<int> listenEvents;
  late StreamSubscription _statusViewSubscription;

  bool _controlView = false;

  @override
  void initState() {
    super.initState();
    initPlatformState();
    listenEvents = MapboxNavigationView.getStateMapboxView;
  }

  Future<void> initPlatformState() async {
    if (!mounted) return;
  }

  _statusView(event) {
    if (event == 2) {
      setState(() {
        _controlView = false;
      });
      _statusViewSubscription.cancel();
    }
  }

  Future<void> androidNav({
    required double sourceLat,
    required double sourceLng,
    required double desLat,
    required double desLng,
  }) async {
    await _navigationWithMapboxPlugin.startNavigation(
      origin: WayPoint(
        latitude: sourceLat,
        longitude: sourceLng,
      ),
      destination: WayPoint(
        latitude: desLat,
        longitude: desLng,
      ),
      setDestinationWithLongTap: true,
      simulateRoute: false,
      alternativeRoute: true,
      style: Constants.styleNavAndroid,
      language: Constants.langNav,
      profile: Constants.profileNavAndroid,
      voiceUnits: Constants.voiceNav,
    );
  }

  Future<void> iosNav({
    required double sourceLat,
    required double sourceLng,
    required double desLat,
    required double desLng,
  }) async {
    var options = MapboxOptions(
      origin: WayPoint(
        latitude: sourceLat,
        longitude: sourceLng,
      ),
      destination: WayPoint(
        latitude: desLat,
        longitude: desLng,
      ),
      setDestinationWithLongTap: true,
      simulateRoute: false,
      profile: Constants.profileNavIos,
      style: Constants.styleNavIos,
      language: Constants.langNav,
      voiceUnits: Constants.voiceNav,
    );
    setState(() {
      _options = options;
      _controlView = true;
    });
    _statusViewSubscription = listenEvents.listen(_statusView);
  }

  @override
  void dispose() {
    _statusViewSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const AppMap(),
          Positioned(
            top: MediaQuery.of(context).viewPadding.top,
            left: 0,
            right: 0,
            child: const MainAppBar(),
          ),
          Positioned(
            bottom: 28,
            right: 16,
            left: 16,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppBackButton(),
                    CurrentLocationButton(),
                  ],
                ),
                const SizedBox(height: 28),
                ActionMapAddress(
                  navButton: (sourceLat, sourceLng, desLat, desLng) async {
                    if (io.Platform.isAndroid) {
                      await androidNav(
                        sourceLat: sourceLat,
                        sourceLng: sourceLng,
                        desLat: desLat,
                        desLng: desLng,
                      );
                    }
                    if (io.Platform.isIOS) {
                      await iosNav(
                        sourceLat: sourceLat,
                        sourceLng: sourceLng,
                        desLat: desLat,
                        desLng: desLng,
                      );
                    }
                  },
                ),
              ],
            ),
          ),
          if (_controlView) MapboxNavigationView(mapboxOptions: _options!),
        ],
      ),
    );
  }
}
