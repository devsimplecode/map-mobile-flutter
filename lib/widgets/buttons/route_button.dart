import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map_flutter/l10n/generated/l10n.dart';
import 'package:map_flutter/main_bloc/address_bloc/address_bloc.dart';

class RouteButton extends StatelessWidget {
  const RouteButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddressBloc, AddressState>(
      builder: (context, state) {
        return Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  if (state.polylineYandex?.isEmpty ?? true) {
                    BlocProvider.of<AddressBloc>(context).add(const AddressEvent.setPolyline());
                  }
                },
                style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.all(12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    )),
                child: Text(
                  state.polylineYandex?.isEmpty ?? true
                      ? S.of(context).route
                      : S.of(context).turnByTurn,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
