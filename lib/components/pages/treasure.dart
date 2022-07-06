import 'package:flutter/material.dart';
import 'package:seven_wonders_auto_score/components/pages/military_conflicts.dart';
import 'package:seven_wonders_auto_score/components/templates/players_values.dart';

class TreasurePage extends StatelessWidget {
  final int playerQuantity;

  const TreasurePage({super.key, required this.playerQuantity});

  @override
  Widget build(BuildContext context) {
    return PlayersValuesTemplate.score(
        title: 'Tesouro',
        size: playerQuantity,
        next: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    MilitaryConflictsPage(playerQuantity: playerQuantity)),
          );
        });
  }
}
