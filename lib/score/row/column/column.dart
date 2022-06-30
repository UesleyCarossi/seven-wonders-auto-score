import 'package:flutter/material.dart';

class ScoreRowColumn extends StatelessWidget {
  const ScoreRowColumn(
      {Key? key, required this.value, this.backgroundColor = Colors.white})
      : super(key: key);

  final String value;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Text(value),
    );
  }
}
