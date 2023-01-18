import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:map_flutter/main_bloc/address_bloc/address_bloc.dart';
import 'package:map_flutter/main_bloc/location_bloc/location_bloc.dart';

class GoogleAppMap extends StatefulWidget {
  const GoogleAppMap({
    Key? key,
    required this.latitude,
    required this.longitude,
  }) : super(key: key);
  final double? latitude;
  final double? longitude;

  @override
  State<GoogleAppMap> createState() => _GoogleAppMapState();
}

class _GoogleAppMapState extends State<GoogleAppMap> {
  final Completer<GoogleMapController> _controller = Completer();
  GoogleMapController? _baseController;
  bool listenError = true;

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<LocationBloc, LocationState>(
          listener: (context, state) {
            state.maybeMap(
                orElse: () {},
                map: (google) {
                  if (google.moveToCurrentLocation) {
                    _baseController?.animateCamera(
                      CameraUpdate.newLatLngZoom(
                        LatLng(widget.latitude!, widget.longitude!),
                        18,
                      ),
                    );
                  }
                });
          },
        ),
        BlocListener<AddressBloc, AddressState>(
          listenWhen: (prev, curr) => prev.markersGoogle != curr.markersGoogle,
          listener: (context, state) async {
            if (state.markersGoogle?.isNotEmpty ?? false) {
              _baseController?.animateCamera(
                CameraUpdate.newLatLngZoom(
                  LatLng(state.location!.lat!, state.location!.lng!),
                  18,
                ),
              );
            }
          },
        ),
      ],
      child: BlocBuilder<AddressBloc, AddressState>(
        builder: (context, state) {
          return GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(widget.latitude!, widget.longitude!),
              zoom: 1,
            ),
            onMapCreated: (GoogleMapController googleMapController) {
              _baseController = googleMapController;
              Future.delayed(const Duration(seconds: 1), () {
                _baseController?.animateCamera(
                  CameraUpdate.newLatLngZoom(
                    LatLng(widget.latitude!, widget.longitude!),
                    18,
                  ),
                );
              });

              _controller.complete(googleMapController);
            },
            markers: state.markersGoogle ?? {},
            onTap: (latLng) {
              BlocProvider.of<AddressBloc>(context).add(
                AddressEvent.initAddress(
                  lat: latLng.latitude,
                  lng: latLng.longitude,
                  currentLat: widget.latitude!,
                  currentLng: widget.longitude!,
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
