import 'package:flutter/material.dart';
import 'package:seven_wonders_auto_score/components/pages/scientific_structures.dart';
import 'package:seven_wonders_auto_score/components/templates/players_values.dart';

class CommercialStructuresPage extends StatelessWidget {
  const CommercialStructuresPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PlayersValuesTemplate.score(
        title: 'Cartas Amarelas (Estruturas Comerciais)',
        next: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const ScientificStructuresPage()),
          );
        });
  }
}
