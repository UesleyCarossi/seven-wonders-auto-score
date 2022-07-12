import 'package:flutter/material.dart';
import 'package:seven_wonders_auto_score/components/templates/score.dart';
import 'package:seven_wonders_auto_score/components/molecules/row.dart'
    as molecules;
import 'package:seven_wonders_auto_score/components/atoms/tile.dart';

class ScorePage extends StatelessWidget {
  final Map<String, Map<String, String>> players;

  const ScorePage({super.key, required this.players});

  @override
  Widget build(BuildContext context) {
    return ScoreTemplate(
      title: "Pontuação",
      rows: [
        molecules.Row(
          children: [
            const Tile(Icon(Icons.face_rounded)),
            ...List.generate(players.length,
                (index) => Tile(Text(players.keys.elementAt(index)))),
          ],
        ),
        molecules.Row(
          children: [
            const Tile(Icon(Icons.eject_rounded, color: Colors.yellow)),
            ...List.generate(players.length, (index) {
              var player = players.keys.elementAt(index);
              return Tile(Text(players[player]!["wonder-board"]!));
            }),
          ],
        ),
        molecules.Row(
          children: [
            const Tile(Icon(Icons.circle_rounded, color: Colors.yellow)),
            ...List.generate(players.length, (index) {
              var player = players.keys.elementAt(index);
              return Tile(Text(players[player]!["treasure"]!));
            }),
          ],
        ),
        molecules.Row(
          children: [
            const Tile(Icon(Icons.hexagon_rounded, color: Colors.red)),
            ...List.generate(players.length, (index) {
              var player = players.keys.elementAt(index);
              return Tile(Text(players[player]!["military-conflicts"]!));
            }),
          ],
        ),
        molecules.Row(
          children: [
            const Tile(
              Icon(Icons.battery_full_rounded, color: Colors.white54),
              backgroundColor: Colors.blue,
            ),
            ...List.generate(players.length, (index) {
              var player = players.keys.elementAt(index);
              return Tile(Text(players[player]!["civil-structures"]!));
            }),
          ],
        ),
        molecules.Row(
          children: [
            const Tile(
              Icon(Icons.circle_rounded, color: Colors.white54),
              backgroundColor: Colors.yellow,
            ),
            ...List.generate(players.length, (index) {
              var player = players.keys.elementAt(index);
              return Tile(Text(players[player]!["commercial-structures"]!));
            }),
          ],
        ),
        molecules.Row(
          children: [
            const Tile(
              Icon(Icons.change_history_rounded, color: Colors.white54),
              backgroundColor: Colors.green,
            ),
            ...List.generate(players.length, (index) {
              var player = players.keys.elementAt(index);
              return Tile(Text(players[player]!["scientific-structures"]!));
            }),
          ],
        ),
        molecules.Row(
          children: [
            const Tile(
              Icon(Icons.star_rounded, color: Colors.white54),
              backgroundColor: Colors.purple,
            ),
            ...List.generate(players.length, (index) {
              var player = players.keys.elementAt(index);
              return Tile(Text(players[player]!["guilds"]!));
            }),
          ],
        ),
        molecules.Row(
          children: [
            const Tile(Icon(Icons.functions_rounded)),
            ...List.generate(players.length, (index) {
              var player = players.keys.elementAt(index);

              var total = 0;
              total += int.parse(players[player]!["wonder-board"]!);
              total += int.parse(players[player]!["treasure"]!);
              total += int.parse(players[player]!["military-conflicts"]!);
              total += int.parse(players[player]!["civil-structures"]!);
              total += int.parse(players[player]!["commercial-structures"]!);
              total += int.parse(players[player]!["scientific-structures"]!);
              total += int.parse(players[player]!["guilds"]!);

              return Tile(Text(total.toString()));
            }),
          ],
        ),
      ],
    );
  }
}
