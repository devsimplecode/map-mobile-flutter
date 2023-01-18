import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map_flutter/main_bloc/address_bloc/address_bloc.dart';
import 'package:map_flutter/main_bloc/location_bloc/location_bloc.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class YandexAppMap extends StatefulWidget {
  const YandexAppMap({
    Key? key,
    required this.latitude,
    required this.longitude,
  }) : super(key: key);
  final double? latitude;
  final double? longitude;

  @override
  State<YandexAppMap> createState() => _YandexAppMapState();
}

class _YandexAppMapState extends State<YandexAppMap> {
  final Completer<YandexMapController> _controller = Completer();
  late YandexMapController _baseController;

  @override
  Widget build(BuildContext context) {
    return BlocListener<LocationBloc, LocationState>(
      listener: (context, state) {
        state.maybeMap(
          orElse: () {},
          map: (yandex) {
            if (yandex.moveToCurrentLocation) {
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
              _controller.complete(yandexMapController);
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
            },
            onMapTap: (point) {
              BlocProvider.of<AddressBloc>(context).add(AddressEvent.initAddress(
                lat: point.latitude,
                lng: point.longitude,
                currentLat: widget.latitude!,
                currentLng: widget.longitude!,
                selectionObject: true,
              ));
            },
            mapObjects: state.markersYandex ?? [],
          );
        },
      ),
    );
  }
}
