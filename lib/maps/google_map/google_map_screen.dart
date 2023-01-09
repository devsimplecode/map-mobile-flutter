import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
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
  List<LatLng> polylineCoordinates = [];
  final Completer<GoogleMapController> _controller = Completer();
  Set<Marker> markers = {};
  late String mapStyle = '';

  @override
  void initState() {
    rootBundle.loadString('assets/map_style.txt').then((string) {
      mapStyle = string;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GoogleMapBloc, GoogleMapState>(
      listener: (context, state) {
        if (state.markers != null) {
          markers = {};
          markers.addAll(state.markers ?? []);

        }
      },
      builder: (context, state) {
        return Scaffold(
          body: GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(widget.latitude!, widget.longitude!),
              zoom: 18,
            ),
            onMapCreated: (ctrl) {
              _controller.complete(ctrl);
              // ctrl.setMapStyle(mapStyle);
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
          ),
        );
      },
    );
  }
}
