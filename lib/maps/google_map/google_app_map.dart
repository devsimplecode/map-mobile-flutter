import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:map_flutter/repo/check_internet_connection_repo.dart';
import 'package:map_flutter/main_bloc/address_bloc/address_bloc.dart';
import 'package:map_flutter/main_bloc/location_bloc/location_bloc.dart';

class GoogleAppMap extends StatefulWidget {
  const GoogleAppMap({
    Key? key,
    required this.locationStatus,
    required this.latitude,
    required this.longitude,
    required this.connectionStatus,
  }) : super(key: key);
  final double? latitude;
  final double? longitude;
  final PermissionStatus? locationStatus;
  final ConnectionStatus? connectionStatus;

  @override
  State<GoogleAppMap> createState() => _GoogleAppMapState();
}

class _GoogleAppMapState extends State<GoogleAppMap> {
  final Completer<GoogleMapController> _controller = Completer();
  GoogleMapController? _baseController;

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
          print('${widget.latitude!},${widget.longitude!}');
          return GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(widget.latitude!, widget.longitude!),
              zoom: 1,
            ),
            onMapCreated: (GoogleMapController googleMapController) {
              _baseController = googleMapController;
              if (widget.locationStatus == PermissionStatus.granted) {
                _baseController?.animateCamera(
                  CameraUpdate.newLatLngZoom(
                    LatLng(widget.latitude!, widget.longitude!),
                    18,
                  ),
                );
              }

              _controller.complete(googleMapController);
            },
            markers: state.markersGoogle ?? {},
            onTap: (latLng) {
              if (widget.connectionStatus == ConnectionStatus.online) {
                BlocProvider.of<AddressBloc>(context).add(
                  AddressEvent.initAddress(
                    lat: latLng.latitude,
                    lng: latLng.longitude,
                    selectionObject: true,
                  ),
                );
              }
            },
          );
        },
      ),
    );
  }
}
