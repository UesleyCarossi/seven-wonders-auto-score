import 'package:flutter/material.dart';
import 'package:seven_wonders_auto_score/components/pages/score.dart';
import 'package:seven_wonders_auto_score/components/templates/players_values.dart';

class GuildsPage extends StatelessWidget {
  const GuildsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PlayersValuesTemplate(
        title: 'Cartas Roxas (Guildas)',
        next: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ScorePage()),
          );
        });
  }
}
