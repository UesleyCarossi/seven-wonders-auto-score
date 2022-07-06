import 'package:flutter/material.dart';
import 'package:seven_wonders_auto_score/components/pages/commercial_structures.dart';
import 'package:seven_wonders_auto_score/components/templates/players_values.dart';

class CivilStructuresPage extends StatelessWidget {
  const CivilStructuresPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PlayersValuesTemplate.score(
        title: 'Cartas Azuis (Estruturas Civis)',
        next: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const CommercialStructuresPage()),
          );
        });
  }
}
