import 'package:flutter/material.dart';
import 'package:seven_wonders_auto_score/components/pages/civil_structures.dart';
import 'package:seven_wonders_auto_score/components/templates/players_values.dart';

class MilitaryConflictsPage extends StatelessWidget {
  const MilitaryConflictsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PlayersValuesTemplate.score(
        title: 'Conflitos Militares',
        next: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const CivilStructuresPage()),
          );
        });
  }
}
