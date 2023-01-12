import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum MapsType { google, yandex, osm }

class TypeMapCubit extends Cubit<TypeMapState> {
  TypeMapCubit() : super(TypeMapState());
  late SharedPreferences preferences;

  void initMapsType() async {
    preferences = await SharedPreferences.getInstance();
    if (preferences.getString('map') != null) {
      switch (preferences.getString('map')?.mapsType) {
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
      await preferences.setString('map', MapsType.google.toMapsType);
      emit(state.copyWith(mapsType: MapsType.google));
    }
  }

  void setMapType(MapsType mapsType) async {
    await preferences.setString('map', mapsType.toMapsType);
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
    if (this == 'Google maps') return MapsType.google;
    if (this == 'Yandex maps') return MapsType.yandex;
    if (this == 'OSM maps') return MapsType.osm;
    return MapsType.google;
  }
}

extension ToMapsType on MapsType {
  String get toMapsType {
    if (this == MapsType.google) return 'Google maps';
    if (this == MapsType.yandex) return 'Yandex maps';
    if (this == MapsType.osm) return 'OSM maps';
    return 'Google maps';
  }
}
