import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map_flutter/main_bloc/type_map_bloc/type_map_bloc.dart';
import 'package:map_flutter/l10n/generated/l10n.dart';

Future<dynamic> showBottomSheetTypeMap({required BuildContext context}) async {
  final result = await showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(25.0),
      ),
    ),
    builder: (_) {
      final mapsType = context.read<TypeMapCubit>().state.mapsType;
      return DraggableScrollableSheet(
        expand: false,
        initialChildSize: 1,
        minChildSize: .5,
        builder: (_, controller) {
          return BottomSheetSelectMap(
            controller: controller,
            initial: mapsType?.toMapsType,
            onTap: (String map){
              BlocProvider.of<TypeMapCubit>(context).setMapType(map.mapsType);
            },
          );
        },
      );
    },
  );
  return result;
}

class BottomSheetSelectMap extends StatelessWidget {
  const BottomSheetSelectMap({
    Key? key,
    this.initial,
    this.onTap,
    required this.controller,
  }) : super(key: key);
  final dynamic initial;
  final Function(String)? onTap;
  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      'Google maps',
      'Yandex maps',
      'OSM maps',
    ];

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            children:  [
              Expanded(
                child: Text(
                  S.of(context).selectMap,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Expanded(
            child: ListView.separated(
              controller: controller,
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      items[index],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Color(0xFF474AD0),
                      ),
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: const BorderSide(
                        color: Color(0xFF474AD0),
                      )),
                  trailing: SizedBox(
                    width: 20.0,
                    height: 20.0,
                    child: items[index] == initial
                        ? const Icon(
                            Icons.check,
                            color: Color(0xFF474AD0),
                          )
                        : null,
                  ),
                  onTap: () {
                    Navigator.pop(context);
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
      ),
    );
  }
}
