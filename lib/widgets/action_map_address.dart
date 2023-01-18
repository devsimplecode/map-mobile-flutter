import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:map_flutter/constants/assets.dart';
import 'package:map_flutter/main_bloc/address_bloc/address_bloc.dart';

class ActionMapAddress extends StatelessWidget {
  const ActionMapAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: BlocBuilder<AddressBloc, AddressState>(
        builder: (context, state) {
          return state.map(
            address: (address) {
              if (address.error?.isNotEmpty ?? false) {
                return Center(
                  child: Text(
                    address.error ?? '',
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                );
              }
              final distance = (address.distanceInMeters ?? 0) > 1000
                  ? '${address.bearing?.toInt() ?? 0} KM'
                  : '${address.distanceInMeters?.toInt() ?? 0} M';
              return Column(
                children: [
                  if (address.selectedAddress?.isEmpty ?? true)
                    const Text(
                      'Ваше текущее местоположение:',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  const SizedBox(height: 8),
                  address.loadingAddress
                      ? const Center(child: CircularProgressIndicator(color: Colors.blue))
                      : Column(
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(AppAssets.svg.currentLocation),
                                const SizedBox(width: 12),
                                Flexible(
                                  child: Text(
                                    address.currentAddress ?? '',
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
                            if (address.selectedAddress?.isNotEmpty ?? false) ...[
                              const SizedBox(height: 16),
                              Row(
                                children: [
                                  SvgPicture.asset(AppAssets.svg.route),
                                  const SizedBox(width: 12),
                                  Flexible(
                                    child: Text(
                                      address.selectedAddress ?? '',
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
              );
            },
          );
        },
      ),
    );
  }
}
