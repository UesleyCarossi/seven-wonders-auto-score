import 'package:flutter/material.dart';

import 'header/header.dart';
import 'row/row.dart';

class Score extends StatelessWidget {
  const Score({Key? key, required this.header, required this.rows})
      : super(key: key);

  final ScoreHeader header;
  final List<ScoreRow> rows;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        header,
        ...rows,
      ],
    );
  }
}
