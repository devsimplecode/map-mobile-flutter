import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
                  const Text(
                    'Ваше текущее местоположение:',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 8),
                  google.loading
                      ? const Center(child: CircularProgressIndicator(color: Colors.blue))
                      : Text(
                          google.address ?? '',
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
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
