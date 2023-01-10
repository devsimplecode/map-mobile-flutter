import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:map_flutter/constants/assets.dart';
import 'package:map_flutter/main_bloc/main_bloc.dart';

class CurrentLocationButton extends StatelessWidget {
  const CurrentLocationButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        BlocProvider.of<MainBloc>(context)
            .add(const MainEvent.initLocation(moveToCurrentLocation: true));
      },
      child: SvgPicture.asset(AppAssets.svg.navigationButton),
    );
  }
}
