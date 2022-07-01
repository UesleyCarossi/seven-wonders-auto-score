import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  const Tile(this.icon, {Key? key, this.backgroundColor = Colors.white})
      : super(key: key);

  final Widget icon;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: icon,
    );
  }
}
