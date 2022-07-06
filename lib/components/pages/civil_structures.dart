import 'package:flutter/material.dart';
import 'package:seven_wonders_auto_score/components/pages/commercial_structures.dart';
import 'package:seven_wonders_auto_score/components/templates/players_values.dart';

class CivilStructuresPage extends StatelessWidget {
  final int playerQuantity;

  const CivilStructuresPage({super.key, required this.playerQuantity});

  @override
  Widget build(BuildContext context) {
    return PlayersValuesTemplate.score(
        title: 'Cartas Azuis (Estruturas Civis)',
        size: playerQuantity,
        next: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    CommercialStructuresPage(playerQuantity: playerQuantity)),
          );
        });
  }
}
