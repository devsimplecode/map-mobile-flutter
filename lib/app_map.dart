import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:location/location.dart';
import 'package:map_flutter/main_bloc/address_bloc/address_bloc.dart';
import 'package:map_flutter/main_bloc/bloc_check_internet/bloc_check_internet.dart';
import 'package:map_flutter/main_bloc/location_bloc/location_bloc.dart';
import 'package:map_flutter/main_bloc/type_map_bloc/type_map_bloc.dart';
import 'package:map_flutter/maps/default_maps/google_default_map.dart';
import 'package:map_flutter/maps/default_maps/osm_default_map.dart';
import 'package:map_flutter/maps/default_maps/yandex_default_map.dart';
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
          listenWhen: (prev, curr) => prev.maybeKey() != curr.maybeKey(),
          listener: (context, locationState) {
            locationState.maybeMap(
              orElse: () {},
              map: (location) {
                if (location.status == PermissionStatus.granted) {
                  BlocProvider.of<AddressBloc>(context).add(
                    AddressEvent.initAddress(
                      lat: location.latitude!,
                      lng: location.longitude!,
                    ),
                  );
                }
              },
            );
          },
        ),
      ],
      child: BlocBuilder<LocationBloc, LocationState>(
        builder: (context, locationState) {
          return BlocBuilder<TypeMapCubit, TypeMapState>(
            builder: (context, mapState) {
              return locationState.map(
                init: (init) {
                  if (init.status == PermissionStatus.denied) {
                    switch (mapState.mapsType) {
                      case MapsType.yandex:
                        return const YandexDefaultMap();
                      case MapsType.osm:
                        return const OsmDefaultMap();
                      default:
                        return const GoogleDefaultMap();
                    }
                  }

                  return const Center(child: CupertinoActivityIndicator(color: Colors.blue));
                },
                map: (location) {
                  return BlocBuilder<BlocCheckInternet, StateCheckInternet>(
                    builder: (context, connectionState) {
                      switch (mapState.mapsType) {
                        case MapsType.yandex:
                          return YandexAppMap(
                            latitude: location.latitude,
                            longitude: location.longitude,
                            locationStatus: location.status,
                            connectionStatus: connectionState.connection,
                          );
                        case MapsType.osm:
                          return OsmAppMap(
                            latitude: location.latitude,
                            longitude: location.longitude,
                            locationStatus: location.status,
                            connectionStatus: connectionState.connection,
                          );
                        default:
                          return GoogleAppMap(
                            locationStatus: location.status,
                            latitude: location.latitude,
                            longitude: location.longitude,
                            connectionStatus: connectionState.connection,
                          );
                      }
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
