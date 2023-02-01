import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map_flutter/l10n/generated/l10n.dart';
import 'package:map_flutter/main_bloc/address_bloc/address_bloc.dart';
import 'package:map_flutter/main_bloc/location_bloc/location_bloc.dart';

class RouteButton extends StatelessWidget {
  const RouteButton({
    Key? key,
    required this.navButton,
  }) : super(key: key);
  final Function(
    double sourceLat,
    double sourceLng,
    double desLat,
    double desLng,
  ) navButton;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddressBloc, AddressState>(
      builder: (context, state) {
        return Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () async {
                  if (!state.setPolylineOsm) {
                    BlocProvider.of<AddressBloc>(context).add(const AddressEvent.setPolyline());
                  } else {
                    if (context.read<AddressBloc>().isNotEmptyLatLng) {
                      BlocProvider.of<LocationBloc>(context).add(
                        const LocationEvent.initLocation(
                          moveToCurrentLocation: true,
                        ),
                      );
                      navButton.call(
                        context.read<AddressBloc>().currentLat!,
                        context.read<AddressBloc>().currentLng!,
                        state.location!.lat!,
                        state.location!.lng!,
                      );
                    }
                  }
                },
                style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.all(12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    )),
                child: Text(
                  !state.setPolylineOsm ? S.of(context).route : S.of(context).turnByTurn,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
