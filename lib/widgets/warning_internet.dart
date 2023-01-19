import 'package:flutter/material.dart';
import 'package:map_flutter/l10n/generated/l10n.dart';

class WarningInternet extends StatelessWidget {
  const WarningInternet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      width: double.infinity,
      color: Colors.red,
      child: Column(
        children: [
          Text(
            S.of(context).noInternet,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            S.of(context).checkInternet,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
