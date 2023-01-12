import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:map_flutter/constants/assets.dart';
import 'package:map_flutter/main_bloc/address_bloc/address_bloc.dart';
import 'package:map_flutter/main_bloc/location_bloc/location_bloc.dart';
import 'package:map_flutter/main_bloc/type_map_bloc/type_map_bloc.dart';
import 'package:map_flutter/maps/google_map/widgets/bottom_sheet.dart';
import 'package:map_flutter/maps/osm_map/osm_app_map.dart';
import 'package:map_flutter/maps/osm_map/widgets/bottom_sheet.dart';
import 'package:map_flutter/maps/yandex_map/widgets/bottom_sheet.dart';
import 'package:map_flutter/widgets/app_bottom_sheet/bottom_sheet_select_map.dart';
import 'package:map_flutter/widgets/search_text_field.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mapsType = context.read<TypeMapCubit>().state.mapsType;
    final lat = context.read<LocationBloc>().state.maybeCurrentLat();
    final lng = context.read<LocationBloc>().state.maybeCurrentLng();
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () async {
              if (mapsType == MapsType.google) {
                await showBottomSheetSearchGoogleAddress(context: context).then((value) {
                  if (value != null && value.lat != null && value.lng != null) {
                    BlocProvider.of<AddressBloc>(context).add(AddressEvent.initAddress(
                      lat: value.lat!,
                      lng: value.lng!,
                      currentLat: lat,
                      currentLng: lng,
                      selectionObject: true,
                    ));
                  }
                });
              }
              if (mapsType == MapsType.yandex) {
                await showBottomSheetSearchYandexAddress(context: context).then((value) {
                  if (value != null && value.lat != null && value.lng != null) {
                    BlocProvider.of<AddressBloc>(context).add(AddressEvent.initAddress(
                      lat: value.lat!,
                      lng: value.lng!,
                      currentLat: lat,
                      currentLng: lng,
                      selectionObject: true,
                    ));
                  }
                });
              }
              if (mapsType == MapsType.osm) {
                await showBottomSheetSearchOsmAddress(context: context).then((value) {
                  if (value != null && value.lat != null && value.lng != null) {
                    removeMarkerOsm.value = MarkersOsm.goLocation;
                    BlocProvider.of<AddressBloc>(context).add(AddressEvent.initAddress(
                      lat: value.lat!,
                      lng: value.lng!,
                      currentLat: lat,
                      currentLng: lng,
                      selectionObject: true,
                    ));
                  }
                });
              }
            },
            child: SearchTextField(
              enabled: false,
              hintText: 'Куда поедете?',
              uniqueKey: '1',
            ),
          ),
        ),
        const SizedBox(width: 16),
        GestureDetector(
          onTap: () async {
            await showBottomSheetTypeMap(context: context);
          },
          child: SvgPicture.asset(AppAssets.svg.mapSelection),
        ),
      ],
    );
  }
}
