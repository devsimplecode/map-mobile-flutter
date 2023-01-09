import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:map_flutter/constants/assets.dart';
import 'package:map_flutter/main_bloc/main_bloc.dart';
import 'package:map_flutter/maps/google_map/bloc/google_map_bloc.dart';
import 'package:map_flutter/maps/google_map/google_map_screen.dart';
import 'package:map_flutter/repo/api_ip_address.dart';
import 'package:map_flutter/widgets/action_map_address.dart';
import 'package:map_flutter/widgets/current_location_button.dart';
import 'package:map_flutter/widgets/search_text_field.dart';

void main() {
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

const String api = 'AIzaSyDOaiRTglZiVGsdvOq1hgK4wGKRhqdQRMY';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => ApiIpAddress(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => MainBloc(
              api: RepositoryProvider.of<ApiIpAddress>(context),
            )..add(const MainEvent.initLocation()),
          ),
          BlocProvider(
            create: (context) => GoogleMapBloc(),
          ),
        ],
        child: MaterialApp(
          title: 'Flutter Map',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const MyHomePage(),
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<MainBloc, MainState>(
        listener: (context, state) {
          state.maybeWhen(
            orElse: () {},
            map: (_, lat, long) {
              BlocProvider.of<GoogleMapBloc>(context).add(
                GoogleMapEvent.initAddress(
                  lat: lat!,
                  long: long!,
                ),
              );
            },
          );
        },
        builder: (context, state) {
          return Stack(
            children: [
              state.maybeWhen(
                orElse: () => const SizedBox.shrink(),
                loading: () => const Center(child: CircularProgressIndicator(color: Colors.blue)),
                map: (type, latitude, longitude) {
                  return GoogleMapScreen(
                    latitude: latitude,
                    longitude: longitude,
                  );
                },
              ),
              Positioned(
                top: 28,
                left: 16,
                right: 16,
                child: Row(
                  children: [
                    Expanded(
                      child: SearchTextField(
                        hintText: 'Куда поедете?',
                        onTap: () {},
                      ),
                    ),
                    const SizedBox(width: 16),
                    InkWell(
                      onTap: () {},
                      child: SvgPicture.asset(AppAssets.svg.mapSelection),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 16,
                right: 16,
                left: 16,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    CurrentLocationButton(),
                    SizedBox(height: 32),
                    ActionMapAddress(),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
