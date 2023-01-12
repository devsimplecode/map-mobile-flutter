import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map_flutter/main_bloc/address_bloc/address_bloc.dart';
import 'package:map_flutter/main_bloc/location_bloc/location_bloc.dart';
import 'package:map_flutter/main_bloc/type_map_bloc/type_map_bloc.dart';
import 'package:map_flutter/maps/google_map/google_app_map.dart';
import 'package:map_flutter/maps/osm_map/osm_app_map.dart';
import 'package:map_flutter/maps/yandex_map/yandex_app_map.dart';

class AppMap extends StatelessWidget {
  const AppMap({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LocationBloc, LocationState>(
      listener: (context, locationState) {
        locationState.maybeMap(
          orElse: () {},
          map: (location) {
            BlocProvider.of<AddressBloc>(context).add(
              AddressEvent.initAddress(
                lat: location.latitude!,
                lng: location.longitude!,
              ),
            );
          },
        );
      },
      builder: (context, locationState) {
        return BlocBuilder<TypeMapCubit, TypeMapState>(
          builder: (context, mapState) {
            return locationState.maybeMap(
              orElse: () => const SizedBox.shrink(),
              map: (location) {
                if (mapState.mapsType == MapsType.google) {
                  return GoogleAppMap(
                    latitude: location.latitude,
                    longitude: location.longitude,
                  );
                }
                if (mapState.mapsType == MapsType.yandex) {
                  return YandexAppMap(
                    latitude: location.latitude,
                    longitude: location.longitude,
                  );
                }
                if (mapState.mapsType == MapsType.osm) {
                  return OsmAppMap(
                    latitude: location.latitude,
                    longitude: location.longitude,
                  );
                }
                return const SizedBox.shrink();
              },
            );
          },
        );
      },
    );
  }
}
