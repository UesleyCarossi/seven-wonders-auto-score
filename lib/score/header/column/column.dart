import 'package:flutter/material.dart';

class ScoreHeaderColumn extends StatelessWidget {
  const ScoreHeaderColumn(
      {Key? key, required this.icon, this.backgroundColor = Colors.white})
      : super(key: key);

  final Icon icon;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: icon,
    );
  }
}
