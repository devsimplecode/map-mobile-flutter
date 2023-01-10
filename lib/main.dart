import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:map_flutter/constants/assets.dart';
import 'package:map_flutter/main_bloc/main_bloc.dart';
import 'package:map_flutter/maps/google_map/bloc/google_map_bloc.dart';
import 'package:map_flutter/maps/google_map/google_map_screen.dart';
import 'package:map_flutter/repo/map_api.dart';
import 'package:map_flutter/widgets/action_map_address.dart';
import 'package:map_flutter/widgets/app_bottom_sheet/bottom_sheet_search_address.dart';
import 'package:map_flutter/widgets/current_location_button.dart';
import 'package:map_flutter/widgets/search_text_field.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';
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
  runApp( MaterialApp(
    title: 'Flutter Map',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: const YandexApp(),
  ),);
}

const String api = 'AIzaSyDOaiRTglZiVGsdvOq1hgK4wGKRhqdQRMY';
const String apiYandex = '7a26197b-e302-4aec-a72a-2dea22ef0724';
class YandexApp extends StatefulWidget {
  const YandexApp({Key? key}) : super(key: key);

  @override
  State<YandexApp> createState() => _YandexAppState();
}

class _YandexAppState extends State<YandexApp> {
  late YandexMapController controller;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          Expanded(child:YandexMap(
            onMapCreated: (YandexMapController yandexMapController) async {
              controller = yandexMapController;
            },
          )),
        ],
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => MapApi(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => MainBloc(
              api: RepositoryProvider.of<MapApi>(context),
            )..add(const MainEvent.initLocation()),
          ),
          BlocProvider(
            create: (context) => GoogleMapBloc(
              api: RepositoryProvider.of<MapApi>(context),
            ),
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
          state.maybeMap(
            orElse: () {},
            map: (map) {
              BlocProvider.of<GoogleMapBloc>(context).add(
                GoogleMapEvent.initAddress(
                  lat: map.latitude!,
                  long: map.longitude!,
                ),
              );
            },
          );
        },
        builder: (context, state) {
          return Stack(
            children: [
              state.maybeMap(
                orElse: () => const SizedBox.shrink(),
                loading: (_) => const Center(child: CircularProgressIndicator(color: Colors.blue)),
                map: (map) {
                  return GoogleMapScreen(
                    latitude: map.latitude,
                    longitude: map.longitude,
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
                      child: InkWell(
                        onTap: () async {
                          await showBottomSheetSearchAddress(context: context).then((value) {
                            if (value != null && value.lat != null && value.lng != null) {
                              BlocProvider.of<GoogleMapBloc>(context)
                                  .add(GoogleMapEvent.initAddress(
                                lat: value.lat!,
                                long: value.lng!,
                                selectionObject: true,
                              ));
                            }
                          });
                        },
                        child: const SearchTextField(
                          enabled: false,
                          hintText: 'Куда поедете?',
                          uniqueKey: '1',
                        ),
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
                bottom: 28,
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
