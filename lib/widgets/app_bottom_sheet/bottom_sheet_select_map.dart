import 'package:flutter/material.dart';

Future<dynamic> showBottomSheetTypeMap({required BuildContext context}) async {
  final result = await showModalBottomSheet(
    context: context,
    builder: (_) {
      return DraggableScrollableSheet(
        builder: (_, controller) {
          return BottomSheetSelectMap(controller: controller);
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
    this.title,
    required this.controller,
  }) : super(key: key);
  final String? title;
  final dynamic initial;
  final ValueChanged? onTap;
  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    final List items = [
      'Google maps',
      'Yandex maps',
      'OSM maps',
    ];

    return Column(
      children: [
        Row(
          children: const [
            Expanded(
              child: Text(
                'Выберите тип карты:',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
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
                  child: Text(
                    items[index],
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
    );
  }
}
