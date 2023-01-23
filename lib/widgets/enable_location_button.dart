import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map_flutter/main_bloc/bloc_check_internet/bloc_check_internet.dart';
import 'package:map_flutter/repo/internet_connection_repo.dart';
import 'package:map_flutter/l10n/generated/l10n.dart';
import 'package:map_flutter/widgets/warning_internet.dart';

class EnableLocationButton extends StatelessWidget {
  const EnableLocationButton({
    Key? key,
    this.noInternet = true,
  }) : super(key: key);
  final bool noInternet;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlocCheckInternet, StateCheckInternet>(
      buildWhen: (prev, curr) => prev.connection != curr.connection,
      builder: (context, state) {
        if (state.connection == ConnectionStatus.offline) {
          return const WarningInternet();
        }
        return TextButton(
          onPressed: () => AppSettings.openLocationSettings(),
          style: TextButton.styleFrom(
            backgroundColor: Colors.white,
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Text(
                      S.of(context).givePermission,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      S.of(context).unreceivedLocation,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              const Icon(Icons.keyboard_arrow_right)
            ],
          ),
        );
      },
    );
  }
}
