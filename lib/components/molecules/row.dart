import 'package:flutter/material.dart' as material;
import 'package:seven_wonders_auto_score/components/atoms/tile.dart';

class Row extends material.StatelessWidget {
  const Row({material.Key? key, required this.children}) : super(key: key);

  final List<Tile> children;

  @override
  material.Widget build(material.BuildContext context) {
    return material.Row(
      mainAxisAlignment: material.MainAxisAlignment.spaceAround,
      children: children,
    );
  }
}
