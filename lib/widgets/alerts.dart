import 'package:flutter/material.dart';
import 'package:map_flutter/widgets/back_button.dart';
import 'package:map_flutter/l10n/generated/l10n.dart';

Future<T?> showAlert<T>(
  BuildContext context,
  String? errorMessage, {
  VoidCallback? onPressed,
}) {
  return showDialog<T?>(
    context: context,
    builder: (context) {
      return _SimpleAlertBody(
        errorMessage: errorMessage,
        onPressed: onPressed,
      );
    },
  );
}

class _SimpleAlertBody extends StatefulWidget {
  const _SimpleAlertBody({
    Key? key,
    this.errorMessage,
    this.onPressed,
  }) : super(key: key);

  final String? errorMessage;
  final VoidCallback? onPressed;

  @override
  State<_SimpleAlertBody> createState() => _SimpleAlertBodyState();
}

class _SimpleAlertBodyState extends State<_SimpleAlertBody> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 450));
    scaleAnimation = CurvedAnimation(parent: controller, curve: Curves.elasticInOut);

    controller.addListener(() {
      setState(() {});
    });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ScaleTransition(
      scale: scaleAnimation,
      child: AlertDialog(
        backgroundColor: theme.scaffoldBackgroundColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12.0),
          ),
        ),
        content: Container(
          decoration: BoxDecoration(
            color: theme.scaffoldBackgroundColor,
            borderRadius: BorderRadius.circular(12.0),
          ),
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Center(
                    child: AppBackButton(),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                widget.errorMessage ?? '',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: theme.navigationBarTheme.indicatorColor,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              TextButton(
                child: Text(S.of(context).tryAgain),
                onPressed: () {
                  Navigator.of(context).pop();
                  widget.onPressed?.call();
                },
              ),
              TextButton(
                child: Text(S.of(context).ok),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
