import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:location/location.dart';
import 'package:map_flutter/features/app_map/parts/main_map.dart';
import 'package:map_flutter/main_bloc/address_bloc/address_bloc.dart';
import 'package:map_flutter/main_bloc/location_bloc/location_bloc.dart';

class AppMap extends StatelessWidget {
  const AppMap({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<LocationBloc, LocationState>(
          listenWhen: (prev, curr) => prev.maybeKey() != curr.maybeKey(),
          listener: (context, locationState) {
            locationState.maybeMap(
              orElse: () {},
              map: (location) {
                if (location.status == PermissionStatus.granted) {
                  BlocProvider.of<AddressBloc>(context).add(
                    AddressEvent.initAddress(
                      lat: location.latitude!,
                      lng: location.longitude!,
                    ),
                  );
                }
              },
            );
          },
        ),
      ],
      child: BlocBuilder<LocationBloc, LocationState>(
        builder: (context, state) {
          return state.map(
            init: (init) {
              if (init.status == PermissionStatus.denied) {
                return const MainMap(
                  lat: 53.0000,
                  lng: 9.0000,
                  status: PermissionStatus.denied,
                );
              }
              return const Center(child: CupertinoActivityIndicator(color: Colors.blue));
            },
            map: (location) => MainMap(
              lat: location.latitude!,
              lng: location.longitude!,
              status: location.status,
            ),
          );
        },
      ),
    );
  }
}
