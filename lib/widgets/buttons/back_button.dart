import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map_flutter/main_bloc/address_bloc/address_bloc.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<AddressBloc, AddressState>(
      builder: (context, state) {
        if (state.polylineYandex?.isEmpty ?? true) {
          return const SizedBox.shrink();
        }
        return GestureDetector(
          onTap: () {
            BlocProvider.of<AddressBloc>(context)
                .add(const AddressEvent.setPolyline(clearAllPolyline: true));
          },
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              Icons.arrow_back,
              color: theme.navigationBarTheme.indicatorColor,
            ),
          ),
        );
      },
    );
  }
}
