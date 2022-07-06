import 'package:flutter/material.dart';
import 'package:seven_wonders_auto_score/components/pages/civil_structures.dart';
import 'package:seven_wonders_auto_score/components/templates/players_values.dart';

class MilitaryConflictsPage extends StatelessWidget {
  final int playerQuantity;

  const MilitaryConflictsPage({super.key, required this.playerQuantity});

  @override
  Widget build(BuildContext context) {
    return PlayersValuesTemplate.score(
        title: 'Conflitos Militares',
        size: playerQuantity,
        next: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    CivilStructuresPage(playerQuantity: playerQuantity)),
          );
        });
  }
}
