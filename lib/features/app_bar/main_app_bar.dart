import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:location/location.dart';
import 'package:map_flutter/constants/assets.dart';
import 'package:map_flutter/main_bloc/bloc_check_internet/bloc_check_internet.dart';
import 'package:map_flutter/repo/internet_connection.dart';
import 'package:map_flutter/main_bloc/address_bloc/address_bloc.dart';
import 'package:map_flutter/main_bloc/location_bloc/location_bloc.dart';
import 'package:map_flutter/widgets/app_bottom_sheet/bottom_sheet_search_address.dart';
import 'package:map_flutter/widgets/app_bottom_sheet/bottom_sheet_select_map.dart';
import 'package:map_flutter/l10n/generated/l10n.dart';
import 'package:map_flutter/widgets/buttons/switch_location_button.dart';
import 'package:map_flutter/widgets/warning_internet.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocationBloc, LocationState>(
      builder: (context, state) {
        return Column(
          children: [
            state.map(
              init: (init) {
                if (init.status == PermissionStatus.denied) {
                  return const SwitchLocationButton();
                }
                return const SizedBox.shrink();
              },
              map: (loc) {
                if (loc.status == PermissionStatus.denied) {
                  return const SwitchLocationButton();
                }
                return BlocBuilder<BlocCheckInternet, StateCheckInternet>(
                  buildWhen: (prev, curr) => prev.connection != curr.connection,
                  builder: (context, state) {
                    if (state.connection == ConnectionStatus.offline) {
                      return const WarningInternet();
                    }
                    return const SizedBox.shrink();
                  },
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.all(Colors.transparent),
                      ),
                      onPressed: () async {
                        if (state.status == PermissionStatus.granted) {
                          await showBottomSheetSearchAddress(context: context).then(
                            (value) {
                              if (value != null && value.lat != null && value.lng != null) {
                                BlocProvider.of<AddressBloc>(context).add(
                                  AddressEvent.initAddress(
                                    lat: value.lat!,
                                    lng: value.lng!,
                                    selectionObject: true,
                                  ),
                                );
                              }
                            },
                          );
                        } else {
                          BlocProvider.of<LocationBloc>(context)
                              .add(const LocationEvent.initLocation());
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
              ),
            ),
          ],
        );
      },
    );
  }
}