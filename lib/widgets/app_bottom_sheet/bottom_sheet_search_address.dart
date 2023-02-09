import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:map_flutter/constants/assets.dart';
import 'package:map_flutter/constants/constants.dart';
import 'package:map_flutter/main_bloc/search_address_bloc/search_address_bloc.dart';
import 'package:map_flutter/widgets/search_text_field.dart';
import 'package:map_flutter/l10n/generated/l10n.dart';

Future<dynamic> showBottomSheetSearchAddress(
    {required BuildContext context}) async {
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
        minChildSize: .5,
        builder: (_, controller) {
          return BlocBuilder<SearchAddressBloc, SearchAddressState>(
            builder: (context, state) {
              return BottomSheetSearchAddress(
                error: state.error,
                controller: controller,
                onTap: (result) {
                  Navigator.of(context)
                      .pop(result?.place?.geometry?.locationMap);
                },
                onChanged: (value) {
                  BlocProvider.of<SearchAddressBloc>(context)
                      .add(SearchAddressEvent.searchAddress(search: value));
                },
                items: state.places ?? [],
              );
            },
          );
        },
      );
    },
  ).whenComplete(() {
    BlocProvider.of<SearchAddressBloc>(context).add(
      const SearchAddressEvent.searchAddress(search: Constants.empty),
    );
  });
  return result;
}

class BottomSheetSearchAddress extends StatelessWidget {
  const BottomSheetSearchAddress({
    Key? key,
    this.items = const [],
    this.onTap,
    this.error,
    this.onChanged,
    this.onFieldSubmitted,
    this.loadingAddress,
    required this.controller,
  }) : super(key: key);

  final List items;
  final ValueChanged? onTap;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  final ScrollController controller;
  final bool? loadingAddress;
  final String? error;

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
                      hintText: S.of(context).search,
                      onChanged: onChanged,
                      borderColor: Colors.black,
                      onFieldSubmitted: onFieldSubmitted,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        error?.isNotEmpty ?? false
            ? Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  error!,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              )
            : loadingAddress == true
                ? Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      S.of(context).loading,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  )
                : Expanded(
                    child: ListView.separated(
                      controller: controller,
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        if (items[index].address?.isEmpty ?? true) {
                          return const SizedBox.shrink();
                        }
                        return ListTile(
                          title: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Text(items[index].address ?? ''),
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
                      separatorBuilder: (context, _) => const Divider(),
                    ),
                  ),
      ],
    );
  }
}
