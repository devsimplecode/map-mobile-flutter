import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:map_flutter/constants/assets.dart';
import 'package:map_flutter/maps/google_map/bloc/google_map_bloc.dart';

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
      child: BlocBuilder<GoogleMapBloc, GoogleMapState>(
        builder: (context, state) {
          return state.map(
            google: (google) {
              return Column(
                children: [
                  if (google.selectedAddress?.isEmpty ?? true)
                    const Text(
                      'Ваше текущее местоположение:',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  const SizedBox(height: 8),
                  google.loadingAddress
                      ? const Center(child: CircularProgressIndicator(color: Colors.blue))
                      : Column(
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(AppAssets.svg.currentLocation),
                                const SizedBox(width: 12),
                                Flexible(
                                  child: Text(
                                    google.currentAddress ?? '',
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
                            if (google.selectedAddress?.isNotEmpty ?? false) ...[
                              const SizedBox(height: 16),
                              Row(
                                children: [
                                  SvgPicture.asset(AppAssets.svg.route),
                                  const SizedBox(width: 12),
                                  Flexible(
                                    child: Text(
                                      google.selectedAddress ?? '',
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
