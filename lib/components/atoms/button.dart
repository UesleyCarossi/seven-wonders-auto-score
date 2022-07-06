import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Button extends StatelessWidget {
  final String text;
  final VoidCallback action;

  const Button({Key? key, required this.text, required this.action})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        onPrimary: Colors.blue,
        primary: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        side: const BorderSide(
          width: 3,
          color: Color(0xFF565658),
        ),
        fixedSize: const Size(65, 65),
      ),
      onPressed: action,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 30,
          color: Color(0xFFA2A2A2),
        ),
      ),
    );
  }
}
