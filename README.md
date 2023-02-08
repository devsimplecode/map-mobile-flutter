
# Simplecode Map Preview

![1024x500](https://user-images.githubusercontent.com/36184953/217436095-92da8bd0-8eb4-42bd-b45e-73593d277295.png)

## About app
Simplecode Map Preview is an application which presents you a map of the world. There are four types of maps available in the app. It shows your current location on a map, as well as the destinations you've marked and searched for. It also shows the distance between the destinations and directions to them and thus guides you step by step.

## 🛠 App languages
Mobile app: Dart and Flutter

## Features
- Google Map [example](https://gitlab.com/simplecodedev/portfolio/flutter/flutter-map/portfolio-map-flutter/-/tree/main/lib/features/maps)
- Yandex Map [example](https://gitlab.com/simplecodedev/portfolio/flutter/flutter-map/portfolio-map-flutter/-/tree/main/lib/features/maps/yandex_map)
- OSM Map [example](https://gitlab.com/simplecodedev/portfolio/flutter/flutter-map/portfolio-map-flutter/-/tree/main/lib/features/maps/osm_map)
- Navigation with MapBox [example](https://gitlab.com/simplecodedev/portfolio/flutter/flutter-map/portfolio-map-flutter/-/blob/main/lib/features/map_screen.dart)

## Google Map
```bash
  BlocBuilder<AddressBloc, AddressState>(
        builder: (context, state) {
          return GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(widget.latitude!, widget.longitude!),
              zoom: 1,
            ),
            onMapCreated: (GoogleMapController googleMapController) {
              _baseController = googleMapController;
              if (widget.locationStatus == PermissionStatus.granted) {
                _baseController?.animateCamera(
                  CameraUpdate.newLatLngZoom(
                    LatLng(widget.latitude!, widget.longitude!),
                    18,
                  ),
                );
              }

              _controller.complete(googleMapController);
            },
            polylines: state.polylineGoogle?.cast<Polyline>() ?? {},
            markers: state.markersGoogle ?? {},
            onTap: (latLng) {
              if (widget.connectionStatus == ConnectionStatus.online) {
                BlocProvider.of<AddressBloc>(context).add(
                  AddressEvent.initAddress(
                    lat: latLng.latitude,
                    lng: latLng.longitude,
                    selectionObject: true,
                  ),
                );
              }
            },
          );
        },
      ),
```
<img src="https://user-images.githubusercontent.com/36184953/217462541-e7a8a654-ed24-41a1-bd9a-795ef22aa8e7.png" width="300px" /> 

## Yandex Map
<img src="https://user-images.githubusercontent.com/36184953/217467700-59cb7498-3285-423e-acf1-07fc92663760.png" width="300px" />

## OSM Map
<img src="https://user-images.githubusercontent.com/36184953/217474378-ec493f48-df4d-4670-b4bd-dbf98f07df41.png" width="300px" />



<p align="center">
  <img src="https://github.com/Mirshodbek/sap_work/blob/main/assets/Simulator%20Screen%20Recording%20-%20iPhone%2014%20Pro%20Max%20-%202023-02-08%20at%2012.21.42.gif" alt="animated" />
</p>