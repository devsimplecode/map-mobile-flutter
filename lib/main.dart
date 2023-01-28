import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map_flutter/features/app_map/app_map.dart';
import 'package:map_flutter/main_bloc/bloc_check_internet/bloc_check_internet.dart';
import 'package:map_flutter/repo/internet_connection_repo.dart';
import 'package:map_flutter/main_bloc/address_bloc/address_bloc.dart';
import 'package:map_flutter/main_bloc/location_bloc/location_bloc.dart';
import 'package:map_flutter/main_bloc/type_map_bloc/type_map_bloc.dart';
import 'package:map_flutter/main_bloc/search_address_bloc/search_address_bloc.dart';
import 'package:map_flutter/repo/map_api.dart';
import 'package:map_flutter/features/app_bar/main_app_bar.dart';
import 'package:map_flutter/widgets/action_map_address.dart';
import 'package:map_flutter/widgets/buttons/back_button.dart';
import 'package:map_flutter/widgets/buttons/current_location_button.dart';
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
