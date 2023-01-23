import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:location/location.dart';
import 'package:map_flutter/constants/assets.dart';
import 'package:map_flutter/repo/internet_connection_repo.dart';
import 'package:map_flutter/main_bloc/address_bloc/address_bloc.dart';
import 'package:map_flutter/main_bloc/location_bloc/location_bloc.dart';

class OsmAppMap extends StatefulWidget {
  const OsmAppMap({
    Key? key,
    required this.latitude,
    required this.longitude,
    required this.locationStatus,
    required this.connectionStatus,
  }) : super(key: key);
  final double? latitude;
  final double? longitude;
  final PermissionStatus? locationStatus;
  final ConnectionStatus? connectionStatus;

  @override
  State<OsmAppMap> createState() => _OsmAppMapState();
}

class _OsmAppMapState extends State<OsmAppMap> {
  late MapController markerController;
  double? lat;
  double? lng;

  @override
  void initState() {
    markerController = MapController(
      initMapWithUserPosition: false,
      initPosition: GeoPoint(
        latitude: widget.latitude!,
        longitude: widget.longitude!,
      ),
    );
    markerController.listenerMapSingleTapping.addListener(() async {
      if (markerController.listenerMapSingleTapping.value != null &&
          widget.connectionStatus == ConnectionStatus.online) {
        initAddress(markerController.listenerMapSingleTapping.value!);
      }
    });
    super.initState();
  }

  void initAddress(GeoPoint map) {
    BlocProvider.of<AddressBloc>(context).add(AddressEvent.initAddress(
      lat: map.latitude,
      lng: map.longitude,
      selectionObject: true,
    ));
  }

  Future<void> moveToCurrentLocation() async {
    markerController.goToLocation(
      GeoPoint(
        latitude: widget.latitude!,
        longitude: widget.longitude!,
      ),
    );
  }

  Future<void> goToLocation({
    required double latitude,
    required double longitude,
  }) async {
    if (lat != null && lng != null) {
      markerController.changeLocationMarker(
        oldLocation: GeoPoint(
          latitude: lat!,
          longitude: lng!,
        ),
        newLocation: GeoPoint(
          latitude: latitude,
          longitude: longitude,
        ),
      );
    } else {
      await markerController.addMarker(
        GeoPoint(
          latitude: latitude,
          longitude: longitude,
        ),
      );
    }
    markerController.goToLocation(
      GeoPoint(
        latitude: latitude,
        longitude: longitude,
      ),
    );
    lat = latitude;
    lng = longitude;
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LocationBloc, LocationState>(
      listenWhen: (prev, curr) => prev.maybeKey() != curr.maybeKey(),
      listener: (context, state) {
        state.maybeMap(
          orElse: () {},
          map: (google) async {
            if (google.status == PermissionStatus.granted) {
              await moveToCurrentLocation();
            }
          },
        );
      },
      child: BlocConsumer<AddressBloc, AddressState>(
        listenWhen: (prev, curr) => prev.location != curr.location,
        listener: (context, state) async {
          if (state.setMarkersOsm) {
            await goToLocation(
              latitude: state.location!.lat!,
              longitude: state.location!.lng!,
            );
          }
        },
        builder: (context, state) {
          return OSMFlutter(
            controller: markerController,
            initZoom: widget.locationStatus == PermissionStatus.granted ? 18 : 2,
            stepZoom: 5,
            staticPoints: [
              if (widget.locationStatus == PermissionStatus.granted)
                StaticPositionGeoPoint(
                  '1',
                  MarkerIcon(
                    assetMarker: AssetMarker(
                      image: AssetImage(AppAssets.images.location),
                    ),
                  ),
                  [
                    GeoPoint(
                      latitude: widget.latitude!,
                      longitude: widget.longitude!,
                    ),
                  ],
                ),
            ],
          );
        },
      ),
    );
  }
}
