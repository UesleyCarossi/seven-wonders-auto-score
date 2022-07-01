import 'package:flutter/material.dart';
import 'package:seven_wonders_auto_score/components/pages/treasure.dart';
import 'package:seven_wonders_auto_score/components/templates/players_values.dart';

class WonderBoardPage extends StatelessWidget {
  const WonderBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PlayersValuesTemplate(
        title: 'Tabuleiro de Maravilha',
        next: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const TreasurePage()),
          );
        });
  }
}
