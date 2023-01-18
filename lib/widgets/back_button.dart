import 'package:flutter/material.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({
    Key? key,
    this.close = true,
    this.onPressed,
  }) : super(key: key);

  final bool close;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Row(
        children: [
          InkWell(
            onTap: () => onPressed == null ? Navigator.of(context).pop() : onPressed!(),
            child: Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: theme.cardTheme.color,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    spreadRadius: 4,
                    blurRadius: 7,
                  ),
                ],
              ),
              child: Center(
                child: SizedBox(
                  height: 15,
                  width: 15,
                  child: Icon(
                    Icons.clear,
                    color: theme.navigationBarTheme.indicatorColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
