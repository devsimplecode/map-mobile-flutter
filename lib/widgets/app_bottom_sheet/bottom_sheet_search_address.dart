import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:map_flutter/constants/assets.dart';
import 'package:map_flutter/maps/google_map/bloc/google_map_bloc.dart';
import 'package:map_flutter/widgets/search_text_field.dart';

Future<dynamic> showBottomSheetSearchAddress({required BuildContext context}) async {
  final result = await showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(25.0),
      ),
    ),
    builder: (builder) {
      return DraggableScrollableSheet(
        expand: false,
        initialChildSize: .8,
        minChildSize: .8,
        builder: (_, controller) {
          return BlocBuilder<GoogleMapBloc, GoogleMapState>(
            buildWhen: (prev, curr) => prev.searchingPlaces != curr.searchingPlaces,
            builder: (context, state) {
              return BottomSheetSearchAddress(
                controller: controller,
                onTap: (result) {
                  Navigator.of(context).pop(result?.place?.geometry?.location);
                },
                onChanged: (value) {
                  BlocProvider.of<GoogleMapBloc>(context)
                      .add(GoogleMapEvent.searchAddress(search: value));
                },
                items: state.searchingPlaces ?? [],
              );
            },
          );
        },
      );
    },
  ).whenComplete(() {
    BlocProvider.of<GoogleMapBloc>(context).add(
      const GoogleMapEvent.searchAddress(
        search: '',
      ),
    );
  });
  return result;
}

class BottomSheetSearchAddress extends StatelessWidget {
  const BottomSheetSearchAddress({
    Key? key,
    this.items = const [],
    this.onTap,
    this.onChanged,
    required this.controller,
  }) : super(key: key);

  final List items;
  final ValueChanged? onTap;
  final void Function(String)? onChanged;
  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            const SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  Expanded(
                    child: SearchTextField(
                      uniqueKey: '2',
                      hintText: 'Поиск',
                      onChanged: onChanged,
                      borderColor: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Expanded(
          child: ListView.separated(
            controller: controller,
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(items[index].description ?? ''),
                ),
                trailing: SizedBox(
                  width: 20.0,
                  height: 20.0,
                  child: SvgPicture.asset(
                    AppAssets.svg.point,
                  ),
                ),
                onTap: () {
                  onTap?.call(items[index]);
                },
              );
            },
            separatorBuilder: (context, _) {
              return const Divider();
            },
          ),
        ),
      ],
    );
  }
}
