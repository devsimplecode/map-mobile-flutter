import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map_flutter/features/map_screen.dart';
import 'package:map_flutter/main_bloc/bloc_check_internet/bloc_check_internet.dart';
import 'package:map_flutter/repo/internet_connection_repo.dart';
import 'package:map_flutter/main_bloc/address_bloc/address_bloc.dart';
import 'package:map_flutter/main_bloc/location_bloc/location_bloc.dart';
import 'package:map_flutter/main_bloc/type_map_bloc/type_map_bloc.dart';
import 'package:map_flutter/main_bloc/search_address_bloc/search_address_bloc.dart';
import 'package:map_flutter/repo/map_api.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:map_flutter/l10n/generated/l10n.dart';

void main() {
  AndroidYandexMap.useAndroidViewSurface = false;
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Colors.black,
      systemNavigationBarIconBrightness: Brightness.light,
      systemNavigationBarDividerColor: null,
    ),
  );
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => MapApi(),
        ),
        RepositoryProvider(
          create: (context) => InternetConnectionRepo(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => BlocCheckInternet(
              RepositoryProvider.of<InternetConnectionRepo>(context),
            ),
          ),
          BlocProvider(
            create: (context) => TypeMapCubit()..initMapsType(),
          ),
          BlocProvider(
            create: (context) => LocationBloc(
              api: RepositoryProvider.of<MapApi>(context),
            )..add(const LocationEvent.initLocation()),
          ),
          BlocProvider(
            create: (context) => AddressBloc(
              bloc: BlocProvider.of<LocationBloc>(context),
            ),
          ),
          BlocProvider(
            create: (context) => SearchAddressBloc(
              api: RepositoryProvider.of<MapApi>(context),
              bloc: BlocProvider.of<LocationBloc>(context),
            ),
          ),
        ],
        child: MaterialApp(
          title: 'Flutter Map',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          debugShowCheckedModeBanner: false,
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          home: const MapScreen(),
        ),
      ),
    );
  }
}
