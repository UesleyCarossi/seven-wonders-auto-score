import 'package:flutter/material.dart';
import 'package:seven_wonders_auto_score/components/pages/scientific_structures.dart';
import 'package:seven_wonders_auto_score/components/templates/players_values.dart';

class CommercialStructuresPage extends StatelessWidget {
  final int playerQuantity;

  const CommercialStructuresPage({super.key, required this.playerQuantity});

  @override
  Widget build(BuildContext context) {
    return PlayersValuesTemplate.score(
        title: 'Cartas Amarelas (Estruturas Comerciais)',
        size: playerQuantity,
        next: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    ScientificStructuresPage(playerQuantity: playerQuantity)),
          );
        });
  }
}
