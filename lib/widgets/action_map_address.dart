import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:map_flutter/constants/assets.dart';
import 'package:map_flutter/main_bloc/bloc_check_internet/bloc_check_internet.dart';
import 'package:map_flutter/repo/check_internet_connection_repo.dart';
import 'package:map_flutter/main_bloc/address_bloc/address_bloc.dart';
import 'package:map_flutter/l10n/generated/l10n.dart';

class ActionMapAddress extends StatelessWidget {
  const ActionMapAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlocCheckInternet, StateCheckInternet>(
      buildWhen: (prev, curr) => prev.connection != curr.connection,
      builder: (context, state) {
        if (state.connection == ConnectionStatus.offline) {
          return const SizedBox.shrink();
        }
        return Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
          child: BlocBuilder<AddressBloc, AddressState>(
            builder: (context, state) {
              if (state.error?.isNotEmpty ?? false) {
                return Center(
                  child: Text(
                    state.error ?? '',
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                );
              }
              final distance = (state.distanceInMeters ?? 0) > 1000
                  ? '${state.bearing?.toInt() ?? 0} KM'
                  : '${state.distanceInMeters?.toInt() ?? 0} M';
              return Column(
                children: [
                  if ((state.selectedAddress?.isEmpty ?? true) &&
                      (state.currentAddress?.isNotEmpty ?? false)) ...[
                    Text(
                      S.of(context).yourLocation,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                  const SizedBox(height: 8),
                  if (state.loadingAddress) ...[
                    const Center(
                      child: CircularProgressIndicator(
                        color: Colors.blue,
                      ),
                    ),
                  ] else ...[
                    Column(
                      children: [
                        if (state.currentAddress?.isNotEmpty ?? false) ...[
                          Row(
                            children: [
                              SvgPicture.asset(AppAssets.svg.currentLocation),
                              const SizedBox(width: 12),
                              Flexible(
                                child: Text(
                                  state.currentAddress!,
                                  maxLines: 2,
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                        if (state.selectedAddress?.isNotEmpty ?? false) ...[
                          const SizedBox(height: 16),
                          Row(
                            children: [
                              SvgPicture.asset(AppAssets.svg.route),
                              const SizedBox(width: 12),
                              Flexible(
                                child: Text(
                                  state.selectedAddress ?? '',
                                  maxLines: 2,
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 12),
                              Text(
                                distance,
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ],
                    ),
                  ],
                ],
              );
            },
          ),
        );
      },
    );
  }
}
