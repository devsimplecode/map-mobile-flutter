import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map_flutter/constants/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum MapsType { google, yandex, osm }

class TypeMapCubit extends Cubit<TypeMapState> {
  TypeMapCubit() : super(TypeMapState());
  late SharedPreferences preferences;

  void initMapsType() async {
    preferences = await SharedPreferences.getInstance();
    final savedMap = preferences.getString(Constants.keyMap);
    if (savedMap != null) {
      switch (savedMap.mapsType) {
        case MapsType.google:
          emit(state.copyWith(mapsType: MapsType.google));
          break;
        case MapsType.yandex:
          emit(state.copyWith(mapsType: MapsType.yandex));
          break;
        case MapsType.osm:
          emit(state.copyWith(mapsType: MapsType.osm));
          break;
        default:
          emit(state.copyWith(mapsType: MapsType.google));
          return;
      }
    } else {
      await preferences.setString(Constants.keyMap, MapsType.google.toMapsType);
      emit(state.copyWith(mapsType: MapsType.google));
    }
  }

  void setMapType(MapsType mapsType) async {
    await preferences.setString(Constants.keyMap, mapsType.toMapsType);
    emit(state.copyWith(mapsType: mapsType));
  }
}

class TypeMapState {
  final MapsType? mapsType;

  TypeMapState({this.mapsType});

  TypeMapState copyWith({
    MapsType? mapsType,
  }) {
    return TypeMapState(
      mapsType: mapsType ?? this.mapsType,
    );
  }
}

extension MapsTypeString on String {
  MapsType get mapsType {
    if (this == Constants.googleMaps) return MapsType.google;
    if (this == Constants.yandexMaps) return MapsType.yandex;
    if (this == Constants.osmMaps) return MapsType.osm;
    return MapsType.google;
  }
}

extension ToMapsType on MapsType {
  String get toMapsType {
    if (this == MapsType.google) return Constants.googleMaps;
    if (this == MapsType.yandex) return Constants.yandexMaps;
    if (this == MapsType.osm) return Constants.osmMaps;
    return Constants.googleMaps;
  }
}
