import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    Key? key,
    this.onTap,
    this.onChanged,
    this.enabled = true,
    required this.hintText,
    required this.uniqueKey,
    this.borderColor = Colors.white,
  }) : super(key: key);
  final bool enabled;
  final String hintText;
  final Color borderColor;
  final String uniqueKey;
  final void Function()? onTap;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    final textFieldStyle = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: borderColor),
    );
    return TextFormField(
      key: ValueKey(uniqueKey),
      onTap: onTap,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        enabled: enabled,
        prefixIcon: const Icon(Icons.search),
        hintStyle: const TextStyle(
          fontSize: 16,
        ),
        focusedBorder: textFieldStyle,
        enabledBorder: textFieldStyle,
        disabledBorder: textFieldStyle,
        fillColor: Colors.white,
        filled: true,
        contentPadding: const EdgeInsets.symmetric(vertical: 0),
      ),
    );
  }
}
