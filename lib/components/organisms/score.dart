import 'package:flutter/material.dart';
import 'package:seven_wonders_auto_score/components/molecules/row.dart'
    as molecules;

class Score extends StatelessWidget {
  const Score({Key? key, required this.rows}) : super(key: key);

  final List<molecules.Row> rows;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: rows,
    );
  }
}
