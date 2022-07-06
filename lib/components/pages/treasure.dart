import 'package:flutter/material.dart';
import 'package:seven_wonders_auto_score/components/pages/military_conflicts.dart';
import 'package:seven_wonders_auto_score/components/templates/players_values.dart';

class TreasurePage extends StatelessWidget {
  const TreasurePage({super.key});

  @override
  Widget build(BuildContext context) {
    return PlayersValuesTemplate.score(
        title: 'Tesouro',
        next: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const MilitaryConflictsPage()),
          );
        });
  }
}
