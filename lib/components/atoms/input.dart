import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Input extends StatelessWidget {
  final TextInputType keyboardType;
  final List<TextInputFormatter> inputFormatters;

  Input.player({Key? key})
      : keyboardType = TextInputType.text,
        inputFormatters = <TextInputFormatter>[
          FilteringTextInputFormatter.allow(
            RegExp(r'^[a-zA-Z]{1}$'),
          ),
        ],
        super(key: key);

  Input.score({Key? key})
      : keyboardType = TextInputType.number,
        inputFormatters = <TextInputFormatter>[
          FilteringTextInputFormatter.allow(
            RegExp(r'^-?[0-9]{0,2}$'),
          ),
        ],
        super(key: key);

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
    );
  }
}
