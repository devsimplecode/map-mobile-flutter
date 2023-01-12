import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:map_flutter/constants/assets.dart';
import 'package:map_flutter/main_bloc/location_bloc/location_bloc.dart';

class CurrentLocationButton extends StatelessWidget {
  const CurrentLocationButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        BlocProvider.of<LocationBloc>(context)
            .add(const LocationEvent.initLocation(moveToCurrentLocation: true));
      },
      child: SvgPicture.asset(AppAssets.svg.navigationButton),
    );
  }
}
