import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:location/location.dart';
import 'package:map_flutter/repo/internet_connection_repo.dart';
import 'package:map_flutter/main_bloc/address_bloc/address_bloc.dart';
import 'package:map_flutter/main_bloc/location_bloc/location_bloc.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class YandexAppMap extends StatefulWidget {
  const YandexAppMap({
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
  State<YandexAppMap> createState() => _YandexAppMapState();
}

class _YandexAppMapState extends State<YandexAppMap> {
  final Completer<YandexMapController> _controller = Completer();
  late YandexMapController _baseController;

  @override
  Widget build(BuildContext context) {
    return BlocListener<LocationBloc, LocationState>(
      listenWhen: (prev, curr) => prev.maybeKey() != curr.maybeKey(),
      listener: (context, state) {
        state.maybeMap(
          orElse: () {},
          map: (google) async {
            if (google.status == PermissionStatus.granted) {
              _baseController.moveCamera(
                CameraUpdate.newCameraPosition(
                  CameraPosition(
                    target: Point(
                      latitude: widget.latitude!,
                      longitude: widget.longitude!,
                    ),
                    zoom: 16,
                  ),
                ),
                animation: const MapAnimation(
                  duration: 1.0,
                ),
              );
            }
          },
        );
      },
      child: BlocConsumer<AddressBloc, AddressState>(
        listenWhen: (prev, curr) => prev.markersYandex != curr.markersYandex,
        listener: (context, state) {
          if (state.markersYandex?.isNotEmpty ?? false) {
            _baseController.moveCamera(
              CameraUpdate.newCameraPosition(
                CameraPosition(
                  target: Point(
                    latitude: state.location!.lat!,
                    longitude: state.location!.lng!,
                  ),
                  zoom: 16,
                ),
              ),
              animation: const MapAnimation(
                duration: 1.0,
              ),
            );
          }
        },
        builder: (context, state) {
          return YandexMap(
            onMapCreated: (YandexMapController yandexMapController) async {
              _baseController = yandexMapController;
              if (widget.locationStatus == PermissionStatus.granted) {
                yandexMapController.moveCamera(
                  CameraUpdate.newCameraPosition(
                    CameraPosition(
                      target: Point(
                        latitude: widget.latitude!,
                        longitude: widget.longitude!,
                      ),
                      zoom: 16,
                    ),
                  ),
                  animation: const MapAnimation(
                    duration: 2.0,
                  ),
                );
              }
              _controller.complete(yandexMapController);
            },
            onMapTap: (point) {
              if (widget.connectionStatus == ConnectionStatus.online) {
                BlocProvider.of<AddressBloc>(context).add(AddressEvent.initAddress(
                  lat: point.latitude,
                  lng: point.longitude,
                  selectionObject: true,
                ));
              }
            },
            mapObjects: [
              ...state.markersYandex ?? [],
              ...state.mapObjectsYandex ?? [],
            ],
          );
        },
      ),
    );
  }
}
