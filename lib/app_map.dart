import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:location/location.dart';
import 'package:map_flutter/core/check_internet/bloc/bloc_check_internet.dart';
import 'package:map_flutter/main_bloc/address_bloc/address_bloc.dart';
import 'package:map_flutter/main_bloc/location_bloc/location_bloc.dart';
import 'package:map_flutter/main_bloc/type_map_bloc/type_map_bloc.dart';
import 'package:map_flutter/maps/default_maps/google_default_map.dart';
import 'package:map_flutter/maps/google_map/google_app_map.dart';
import 'package:map_flutter/maps/osm_map/osm_app_map.dart';
import 'package:map_flutter/maps/yandex_map/yandex_app_map.dart';

class AppMap extends StatelessWidget {
  const AppMap({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<LocationBloc, LocationState>(
          listener: (context, locationState) {
            locationState.maybeMap(
              orElse: () {},
              map: (location) {
                if (location.status == PermissionStatus.granted) {
                  BlocProvider.of<AddressBloc>(context).add(
                    AddressEvent.initAddress(
                      lat: location.latitude!,
                      lng: location.longitude!,
                      setCurrMarker: true,
                    ),
                  );
                }
              },
            );
          },
        ),
      ],
      child: BlocBuilder<BlocCheckInternet, StateCheckInternet>(
        buildWhen: (prev, curr) => prev.connection != curr.connection,
        builder: (context, connectionState) {
          return BlocBuilder<LocationBloc, LocationState>(
            buildWhen: (prev, curr) => prev.maybeKey() != curr.maybeKey(),
            builder: (context, locationState) {
              return BlocBuilder<TypeMapCubit, TypeMapState>(
                buildWhen: (prev, curr) => prev.mapsType != curr.mapsType,
                builder: (context, mapState) {
                  return locationState.map(
                    init: (_) {
                      return const GoogleDefaultMap();
                    },
                    map: (location) {
                      if (mapState.mapsType == MapsType.google) {
                        return GoogleAppMap(
                          locationStatus: location.status,
                          latitude: location.latitude,
                          longitude: location.longitude,
                          connectionStatus: connectionState.connection,
                        );
                      }
                      if (mapState.mapsType == MapsType.yandex) {
                        return YandexAppMap(
                          latitude: location.latitude,
                          longitude: location.longitude,
                          locationStatus: location.status,
                          connectionStatus: connectionState.connection,
                        );
                      }
                      if (mapState.mapsType == MapsType.osm) {
                        return OsmAppMap(
                          latitude: location.latitude,
                          longitude: location.longitude,
                          locationStatus: location.status,
                          connectionStatus: connectionState.connection,
                        );
                      }
                      return const SizedBox.shrink();
                    },
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
