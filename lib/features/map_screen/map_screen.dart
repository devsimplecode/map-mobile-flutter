import 'package:flutter/material.dart';
import 'package:map_flutter/features/map_screen/app_bar/main_app_bar.dart';
import 'package:map_flutter/features/map_screen/app_map/app_map.dart';
import 'package:map_flutter/widgets/action_map_address.dart';
import 'package:map_flutter/widgets/buttons/back_button.dart';
import 'package:map_flutter/widgets/buttons/current_location_button.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const AppMap(),
          Positioned(
            top: MediaQuery.of(context).viewPadding.top,
            left: 0,
            right: 0,
            child: const MainAppBar(),
          ),
          Positioned(
            bottom: 28,
            right: 16,
            left: 16,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppBackButton(),
                    CurrentLocationButton(),
                  ],
                ),
                const SizedBox(height: 28),
                const ActionMapAddress(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
