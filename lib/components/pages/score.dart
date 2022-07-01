import 'package:flutter/material.dart';
import 'package:seven_wonders_auto_score/components/templates/score.dart';
import 'package:seven_wonders_auto_score/components/molecules/row.dart'
    as molecules;
import 'package:seven_wonders_auto_score/components/atoms/tile.dart';

class ScorePage extends StatelessWidget {
  const ScorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ScoreTemplate(
      title: "Pontuação",
      rows: [
        molecules.Row(
          children: [
            Tile(Icon(Icons.face_rounded)),
            Tile(Text("P1")),
            Tile(Text("P2")),
            Tile(Text("P3")),
            Tile(Text("P4")),
            Tile(Text("P5")),
            Tile(Text("P6")),
            Tile(Text("P7")),
          ],
        ),
        molecules.Row(
          children: [
            Tile(Icon(Icons.eject_rounded, color: Colors.yellow)),
            Tile(Text("10")),
            Tile(Text("10")),
            Tile(Text("10")),
            Tile(Text("10")),
            Tile(Text("10")),
            Tile(Text("10")),
            Tile(Text("10")),
          ],
        ),
        molecules.Row(
          children: [
            Tile(Icon(Icons.circle_rounded, color: Colors.yellow)),
            Tile(Text("10")),
            Tile(Text("10")),
            Tile(Text("10")),
            Tile(Text("10")),
            Tile(Text("10")),
            Tile(Text("10")),
            Tile(Text("10")),
          ],
        ),
        molecules.Row(
          children: [
            Tile(Icon(Icons.hexagon_rounded, color: Colors.red)),
            Tile(Text("10")),
            Tile(Text("10")),
            Tile(Text("10")),
            Tile(Text("10")),
            Tile(Text("10")),
            Tile(Text("10")),
            Tile(Text("10")),
          ],
        ),
        molecules.Row(
          children: [
            Tile(
              Icon(Icons.battery_full_rounded, color: Colors.white54),
              backgroundColor: Colors.blue,
            ),
            Tile(Text("10")),
            Tile(Text("10")),
            Tile(Text("10")),
            Tile(Text("10")),
            Tile(Text("10")),
            Tile(Text("10")),
            Tile(Text("10")),
          ],
        ),
        molecules.Row(
          children: [
            Tile(
              Icon(Icons.circle_rounded, color: Colors.white54),
              backgroundColor: Colors.yellow,
            ),
            Tile(Text("10")),
            Tile(Text("10")),
            Tile(Text("10")),
            Tile(Text("10")),
            Tile(Text("10")),
            Tile(Text("10")),
            Tile(Text("10")),
          ],
        ),
        molecules.Row(
          children: [
            Tile(
              Icon(Icons.change_history_rounded, color: Colors.white54),
              backgroundColor: Colors.green,
            ),
            Tile(Text("10")),
            Tile(Text("10")),
            Tile(Text("10")),
            Tile(Text("10")),
            Tile(Text("10")),
            Tile(Text("10")),
            Tile(Text("10")),
          ],
        ),
        molecules.Row(
          children: [
            Tile(
              Icon(Icons.star_rounded, color: Colors.white54),
              backgroundColor: Colors.purple,
            ),
            Tile(Text("10")),
            Tile(Text("10")),
            Tile(Text("10")),
            Tile(Text("10")),
            Tile(Text("10")),
            Tile(Text("10")),
            Tile(Text("10")),
          ],
        ),
        molecules.Row(
          children: [
            Tile(Icon(Icons.functions_rounded)),
            Tile(Text("10")),
            Tile(Text("10")),
            Tile(Text("10")),
            Tile(Text("10")),
            Tile(Text("10")),
            Tile(Text("10")),
            Tile(Text("10")),
          ],
        ),
      ],
    );
  }
}
