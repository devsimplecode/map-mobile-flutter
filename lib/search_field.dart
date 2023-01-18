import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:map_flutter/constants/assets.dart';
import 'package:map_flutter/main_bloc/address_bloc/address_bloc.dart';
import 'package:map_flutter/main_bloc/location_bloc/location_bloc.dart';
import 'package:map_flutter/main_bloc/type_map_bloc/type_map_bloc.dart';
import 'package:map_flutter/maps/google_map/widgets/bottom_sheet.dart';
import 'package:map_flutter/maps/osm_map/widgets/bottom_sheet.dart';
import 'package:map_flutter/maps/yandex_map/widgets/bottom_sheet.dart';
import 'package:map_flutter/widgets/app_bottom_sheet/bottom_sheet_select_map.dart';
import 'package:map_flutter/l10n/generated/l10n.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lat = context.read<LocationBloc>().state.maybeCurrentLat();
    final lng = context.read<LocationBloc>().state.maybeCurrentLng();
    return BlocBuilder<TypeMapCubit, TypeMapState>(
      builder: (context, mapsType) {
        return Row(
          children: [
            Expanded(
              child: TextButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                ),
                onPressed: () async {
                  if (mapsType.mapsType == MapsType.google) {
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
                  } else if (mapsType.mapsType == MapsType.yandex) {
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
                  } else if (mapsType.mapsType == MapsType.osm) {
                    await showBottomSheetSearchOsmAddress(context: context).then((value) {
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
                },
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        S.of(context).whereDoYouGo,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
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
      },
    );
  }
}
