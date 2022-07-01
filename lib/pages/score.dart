import 'package:flutter/material.dart';

import '../score/header/column/column.dart';
import '../score/header/header.dart';
import '../score/row/column/column.dart';
import '../score/row/row.dart';
import '../score/score.dart';

class ScorePage extends StatefulWidget {
  const ScorePage({Key? key}) : super(key: key);

  @override
  State<ScorePage> createState() => _ScorePageState();
}

class _ScorePageState extends State<ScorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pontuação"),
      ),
      body: const Score(
        header: ScoreHeader(
          children: <ScoreHeaderColumn>[
            ScoreHeaderColumn(
              icon: Icon(Icons.face_rounded),
            ), //player
            ScoreHeaderColumn(
                icon: Icon(
              Icons.eject_rounded,
              color: Colors.yellow,
            )), //wonder
            ScoreHeaderColumn(
                icon: Icon(
              Icons.circle_rounded,
              color: Colors.yellow,
            )), //money
            ScoreHeaderColumn(
                icon: Icon(
              Icons.hexagon_rounded,
              color: Colors.red,
            )), //army
            ScoreHeaderColumn(
              icon: Icon(
                Icons.battery_full_rounded,
                color: Colors.white54,
              ),
              backgroundColor: Colors.blue,
            ), //blue
            ScoreHeaderColumn(
              icon: Icon(
                Icons.circle_rounded,
                color: Colors.white54,
              ),
              backgroundColor: Colors.yellow,
            ), //yellow
            ScoreHeaderColumn(
              icon: Icon(
                Icons.change_history_rounded,
                color: Colors.white54,
              ),
              backgroundColor: Colors.green,
            ), //green
            ScoreHeaderColumn(
              icon: Icon(
                Icons.star_rounded,
                color: Colors.white54,
              ),
              backgroundColor: Colors.purple,
            ), //purple
            ScoreHeaderColumn(
              icon: Icon(Icons.functions_rounded),
            ), //total
          ],
        ),
        rows: <ScoreRow>[
          ScoreRow(children: <ScoreRowColumn>[
            ScoreRowColumn(value: "P"),
            ScoreRowColumn(value: "10"),
            ScoreRowColumn(value: "10"),
            ScoreRowColumn(value: "10"),
            ScoreRowColumn(value: "10"),
            ScoreRowColumn(value: "10"),
            ScoreRowColumn(value: "10"),
            ScoreRowColumn(value: "10"),
            ScoreRowColumn(value: "10"),
          ]),
          ScoreRow(children: <ScoreRowColumn>[
            ScoreRowColumn(value: "F"),
            ScoreRowColumn(value: "10"),
            ScoreRowColumn(value: "10"),
            ScoreRowColumn(value: "10"),
            ScoreRowColumn(value: "10"),
            ScoreRowColumn(value: "10"),
            ScoreRowColumn(value: "10"),
            ScoreRowColumn(value: "10"),
            ScoreRowColumn(value: "10"),
          ]),
        ],
      ),
    );
  }
}
