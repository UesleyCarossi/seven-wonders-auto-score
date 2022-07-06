import 'package:flutter/material.dart';
import 'package:seven_wonders_auto_score/components/pages/score.dart';
import 'package:seven_wonders_auto_score/components/templates/players_values.dart';

class GuildsPage extends StatelessWidget {
  final int playerQuantity;

  const GuildsPage({super.key, required this.playerQuantity});

  @override
  Widget build(BuildContext context) {
    return PlayersValuesTemplate.score(
        title: 'Cartas Roxas (Guildas)',
        size: playerQuantity,
        next: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ScorePage()),
          );
        });
  }
}
