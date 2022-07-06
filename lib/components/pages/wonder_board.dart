import 'package:flutter/material.dart';
import 'package:seven_wonders_auto_score/components/pages/treasure.dart';
import 'package:seven_wonders_auto_score/components/templates/players_values.dart';

class WonderBoardPage extends StatelessWidget {
  final int playerQuantity;

  const WonderBoardPage({super.key, required this.playerQuantity});

  @override
  Widget build(BuildContext context) {
    return PlayersValuesTemplate.score(
        title: 'Tabuleiro de Maravilha',
        size: playerQuantity,
        next: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    TreasurePage(playerQuantity: playerQuantity)),
          );
        });
  }
}
