import 'package:flutter/material.dart';
import 'package:seven_wonders_auto_score/components/molecules/row.dart'
    as molecules;
import 'package:seven_wonders_auto_score/components/organisms/score.dart';

class ScoreTemplate extends StatelessWidget {
  const ScoreTemplate({Key? key, required this.title, required this.rows})
      : super(key: key);

  final String title;
  final List<molecules.Row> rows;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Score(
        rows: rows,
      ),
    );
  }
}
