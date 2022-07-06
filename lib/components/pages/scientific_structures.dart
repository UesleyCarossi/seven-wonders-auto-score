import 'package:flutter/material.dart';
import 'package:seven_wonders_auto_score/components/pages/guilds.dart';
import 'package:seven_wonders_auto_score/components/templates/players_values.dart';

class ScientificStructuresPage extends StatelessWidget {
  final int playerQuantity;

  const ScientificStructuresPage({super.key, required this.playerQuantity});

  @override
  Widget build(BuildContext context) {
    return PlayersValuesTemplate.score(
        title: 'Cartas Verdes (Estruturas Científicas)',
        size: playerQuantity,
        next: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    GuildsPage(playerQuantity: playerQuantity)),
          );
        });
  }
}
