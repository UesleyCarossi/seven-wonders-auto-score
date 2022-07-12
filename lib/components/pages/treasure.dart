import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:seven_wonders_auto_score/components/atoms/input.dart';
import 'package:seven_wonders_auto_score/components/molecules/player_bullet.dart';
import 'package:seven_wonders_auto_score/components/organisms/grid.dart';
import 'package:seven_wonders_auto_score/components/pages/military_conflicts.dart';
import 'package:seven_wonders_auto_score/components/templates/players_values.dart';

class TreasurePage extends StatelessWidget {
  final Map<String, Map<String, String>> players;

  const TreasurePage({super.key, required this.players});

  final _treasureKey = "treasure";

  @override
  Widget build(BuildContext context) {
    return PlayersValuesTemplate(
        title: 'Tesouro',
        inputs: Grid(
          children: List.generate(players.length, (index) {
            var player = players.keys.elementAt(index);
            return SizedBox(
              width: 65,
              height: 65,
              child: PlayerBullet(
                player: player,
                child: Input(
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(
                      RegExp(r'^-?[0-9]{0,2}$'),
                    ),
                  ],
                  onSave: (value) {
                    players.update(player, (playerPoints) {
                      playerPoints.putIfAbsent(_treasureKey, () => value!);
                      return playerPoints;
                    });
                  },
                ),
              ),
            );
          }),
        ),
        next: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MilitaryConflictsPage(players: players),
            ),
          );
        });
  }
}
