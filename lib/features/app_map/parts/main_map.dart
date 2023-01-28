import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:location/location.dart';
import 'package:map_flutter/main_bloc/bloc_check_internet/bloc_check_internet.dart';
import 'package:map_flutter/main_bloc/type_map_bloc/type_map_bloc.dart';
import 'package:map_flutter/maps/google_map/google_app_map.dart';
import 'package:map_flutter/maps/osm_map/osm_app_map.dart';
import 'package:map_flutter/maps/yandex_map/yandex_app_map.dart';

class MainMap extends StatelessWidget {
  const MainMap({
    Key? key,
    required this.lat,
    required this.lng,
    required this.status,
  }) : super(key: key);
  final double lat;
  final double lng;
  final PermissionStatus? status;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlocCheckInternet, StateCheckInternet>(
      builder: (context, connectionState) {
        return BlocBuilder<TypeMapCubit, TypeMapState>(
          builder: (context, mapState) {
            switch (mapState.mapsType) {
              case MapsType.yandex:
                return YandexAppMap(
                  latitude: lat,
                  longitude: lng,
                  locationStatus: status,
                  connectionStatus: connectionState.connection,
                );
              case MapsType.osm:
                return OsmAppMap(
                  latitude: lat,
                  longitude: lng,
                  locationStatus: status,
                  connectionStatus: connectionState.connection,
                );
              default:
                return GoogleAppMap(
                  latitude: lat,
                  longitude: lng,
                  locationStatus: status,
                  connectionStatus: connectionState.connection,
                );
            }
          },
        );
      },
    );
  }
}
