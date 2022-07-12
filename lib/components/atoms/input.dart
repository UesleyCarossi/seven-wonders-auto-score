import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Input extends StatelessWidget {
  final TextInputType keyboardType;
  final List<TextInputFormatter> inputFormatters;
  final void Function(String?) onSave;

  const Input(
      {super.key,
      required this.keyboardType,
      required this.inputFormatters,
      required this.onSave});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        counterText: "",
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 3, color: Color(0xFF565658)),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 3, color: Colors.blue),
          borderRadius: BorderRadius.circular(10),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
      ),
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 30,
        color: Color(0xFFA2A2A2),
      ),
      onSaved: onSave,
    );
  }
}
