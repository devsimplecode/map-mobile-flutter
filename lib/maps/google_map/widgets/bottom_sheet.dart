import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map_flutter/maps/google_map/bloc/google_map_bloc.dart';
import 'package:map_flutter/widgets/app_bottom_sheet/bottom_sheet_search_address.dart';

Future<dynamic> showBottomSheetSearchGoogleAddress({required BuildContext context}) async {
  final result = await showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(25.0),
      ),
    ),
    builder: (builder) {
      return DraggableScrollableSheet(
        expand: false,
        initialChildSize: .8,
        minChildSize: .5,
        builder: (_, controller) {
          return BlocBuilder<GoogleMapBloc, GoogleMapState>(
            buildWhen: (prev, curr) => prev.places != curr.places,
            builder: (context, state) {
              return BottomSheetSearchAddress(
                controller: controller,
                onTap: (result) {
                  Navigator.of(context).pop(result?.place?.geometry?.locationGoogle);
                },
                onChanged: (value) {
                  BlocProvider.of<GoogleMapBloc>(context)
                      .add(GoogleMapEvent.searchAddress(search: value));
                },
                items: state.places ?? [],
              );
            },
          );
        },
      );
    },
  ).whenComplete(() {
    BlocProvider.of<GoogleMapBloc>(context).add(
      const GoogleMapEvent.searchAddress(search: ''),
    );
  });
  return result;
}
