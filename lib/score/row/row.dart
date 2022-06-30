import 'package:flutter/material.dart';

import 'column/column.dart';

class ScoreRow extends StatelessWidget {
  const ScoreRow({Key? key, required this.children}) : super(key: key);

  final List<ScoreRowColumn> children;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: children,
    );
  }
}
