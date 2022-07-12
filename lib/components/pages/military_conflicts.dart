import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:seven_wonders_auto_score/components/atoms/input.dart';
import 'package:seven_wonders_auto_score/components/molecules/player_bullet.dart';
import 'package:seven_wonders_auto_score/components/organisms/grid.dart';
import 'package:seven_wonders_auto_score/components/pages/civil_structures.dart';
import 'package:seven_wonders_auto_score/components/templates/players_values.dart';

class MilitaryConflictsPage extends StatelessWidget {
  final Map<String, Map<String, String>> players;

  const MilitaryConflictsPage({super.key, required this.players});

  final _militaryConflictsKey = "military-conflicts";

  @override
  Widget build(BuildContext context) {
    return PlayersValuesTemplate(
        title: 'Conflitos Militares',
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
                      playerPoints.putIfAbsent(
                          _militaryConflictsKey, () => value!);
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
              builder: (context) => CivilStructuresPage(players: players),
            ),
          );
        });
  }
}
