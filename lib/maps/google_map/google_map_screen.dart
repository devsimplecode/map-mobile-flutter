import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:map_flutter/main_bloc/main_bloc.dart';
import 'package:map_flutter/maps/google_map/bloc/google_map_bloc.dart';

class GoogleMapScreen extends StatefulWidget {
  const GoogleMapScreen({
    Key? key,
    required this.latitude,
    required this.longitude,
  }) : super(key: key);
  final double? latitude;
  final double? longitude;

  @override
  State<GoogleMapScreen> createState() => _GoogleMapScreenState();
}

class _GoogleMapScreenState extends State<GoogleMapScreen> {
  final Completer<GoogleMapController> _controller = Completer();
  GoogleMapController? _mapController;
  Set<Marker> markers = <Marker>{};

  @override
  Widget build(BuildContext context) {
    return BlocListener<MainBloc, MainState>(
      listener: (context, state) {
        state.maybeMap(
            orElse: () {},
            map: (google) {
              if (google.moveToCurrentLocation) {
                _mapController?.animateCamera(
                  CameraUpdate.newLatLngZoom(
                    LatLng(widget.latitude!, widget.longitude!),
                    18,
                  ),
                );
              }
            });
      },
      child: BlocConsumer<GoogleMapBloc, GoogleMapState>(
        listener: (context, state) {
          if (state.markers != null) {
            markers = {};
            markers.addAll(state.markers ?? []);
            _mapController?.animateCamera(
              CameraUpdate.newLatLngZoom(
                LatLng(state.location!.lat!, state.location!.lng!),
                18,
              ),
            );
          }
        },
        builder: (context, state) {
          return GoogleMap(
              compassEnabled: false,
              zoomControlsEnabled: false,
              initialCameraPosition: CameraPosition(
                target: LatLng(widget.latitude!, widget.longitude!),
                zoom: 18,
              ),
              onMapCreated: (ctrl) {
                _mapController = ctrl;
                _controller.complete(ctrl);

                // ctrl.dispose();
              },
              markers: markers,
              onTap: (latLng) {
                BlocProvider.of<GoogleMapBloc>(context).add(
                  GoogleMapEvent.initAddress(
                    lat: latLng.latitude,
                    long: latLng.longitude,
                    currentLat: widget.latitude!,
                    currentLong: widget.longitude!,
                    selectionObject: true,
                  ),
                );
              },
          );
        },
      ),
    );
  }
}
