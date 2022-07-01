import 'package:flutter/material.dart';

import 'column/column.dart';

class ScoreHeader extends StatelessWidget {
  const ScoreHeader({Key? key, required this.children}) : super(key: key);

  final List<ScoreHeaderColumn> children;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: children,
    );
  }
}
