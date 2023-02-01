import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:map_flutter/constants/constants.dart';
import 'package:map_flutter/main_bloc/address_bloc/address_bloc.dart';

extension GooglePolyline on AddressBloc {
  Future<Set<Polyline>> googleSetPolyline(
    SetPolyline event,
    Emitter<AddressState> emit,
    List<PointLatLng> points,
  ) async {
    Set<Polyline> googlePolyline = {};
    final polyline = Polyline(
      polylineId: const PolylineId(Constants.keyGooglePolyline),
      width: 8,
      startCap: Cap.roundCap,
      endCap: Cap.roundCap,
      color: Colors.blue,
      points: [
        for (var point in points) LatLng(point.latitude, point.longitude),
      ],
    );
    googlePolyline.add(polyline);
    return googlePolyline;
  }
}
