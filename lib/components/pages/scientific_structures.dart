import 'package:flutter/material.dart';
import 'package:seven_wonders_auto_score/components/pages/guilds.dart';
import 'package:seven_wonders_auto_score/components/templates/players_values.dart';

class ScientificStructuresPage extends StatelessWidget {
  const ScientificStructuresPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PlayersValuesTemplate.score(
        title: 'Cartas Verdes (Estruturas Científicas)',
        next: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const GuildsPage()),
          );
        });
  }
}
