import 'package:flutter/material.dart';
import 'package:map_flutter/widgets/debouncer.dart';

class SearchTextField extends StatelessWidget {
  SearchTextField({
    Key? key,
    this.onChanged,
    this.enabled = true,
    this.onFieldSubmitted,
    required this.hintText,
    this.borderColor = Colors.white,
  }) : super(key: key);
  final bool enabled;
  final String hintText;
  final Color borderColor;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  final Debounce debounce = Debounce(duration: const Duration(seconds: 1));

  @override
  Widget build(BuildContext context) {
    final textFieldStyle = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: borderColor),
    );
    return TextFormField(
      onChanged: (value) {
        debounce(() {
          onChanged?.call(value);
        });
      },
      onFieldSubmitted: onFieldSubmitted,
      decoration: InputDecoration(
        hintText: hintText,
        enabled: enabled,
        prefixIcon: const Icon(Icons.search),
        hintStyle: const TextStyle(fontSize: 16),
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
