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
  late MapController mapController;
  double? lat;
  double? lng;

  @override
  void initState() {
    mapController = MapController(
      initMapWithUserPosition: false,
      initPosition: GeoPoint(
        latitude: widget.latitude!,
        longitude: widget.longitude!,
      ),
    );
    mapController.listenerMapSingleTapping.addListener(() async {
      if (mapController.listenerMapSingleTapping.value != null &&
          widget.connectionStatus == ConnectionStatus.online) {
        initAddress(mapController.listenerMapSingleTapping.value!);
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

  void moveToCurrentLocation() {
    mapController.goToLocation(
      GeoPoint(
        latitude: widget.latitude!,
        longitude: widget.longitude!,
      ),
    );
  }

  void goToLocation({
    required double latitude,
    required double longitude,
  }) {
    if (lat != null && lng != null) {
      mapController.changeLocationMarker(
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
      mapController.addMarker(
        GeoPoint(
          latitude: latitude,
          longitude: longitude,
        ),
      );
    }

    mapController.goToLocation(
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
    return MultiBlocListener(
      listeners: [
        BlocListener<LocationBloc, LocationState>(
          listenWhen: (prev, curr) => prev.maybeKey() != curr.maybeKey(),
          listener: (context, state) {
            state.maybeMap(
              orElse: () {},
              map: (google) {
                if (google.status == PermissionStatus.granted) {
                  moveToCurrentLocation();
                }
              },
            );
          },
        ),
        BlocListener<AddressBloc, AddressState>(
          listener: (context, state) {
            if (state.setMarkersOsm) {
              goToLocation(
                latitude: state.location!.lat!,
                longitude: state.location!.lng!,
              );
            }
            if (state.setPolylineOsm) {
              mapController.drawRoad(
                GeoPoint(
                  latitude: widget.latitude!,
                  longitude: widget.longitude!,
                ),
                GeoPoint(
                  latitude: state.location!.lat!,
                  longitude: state.location!.lng!,
                ),
                roadOption: const RoadOption(
                  roadColor: Colors.blue,
                  roadWidth: 8,
                ),
              );
            } else {
              mapController.clearAllRoads();
            }
          },
        ),
      ],
      child: BlocBuilder<AddressBloc, AddressState>(
        builder: (context, state) {
          return OSMFlutter(
            controller: mapController,
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
