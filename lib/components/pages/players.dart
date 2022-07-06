import 'package:flutter/material.dart';
import 'package:seven_wonders_auto_score/components/pages/wonder_board.dart';
import 'package:seven_wonders_auto_score/components/templates/players_values.dart';

class PlayersPage extends StatelessWidget {
  final int playerQuantity;

  const PlayersPage({super.key, required this.playerQuantity});

  @override
  Widget build(BuildContext context) {
    return PlayersValuesTemplate.player(
        title: 'Jogadores',
        size: playerQuantity,
        next: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    WonderBoardPage(playerQuantity: playerQuantity)),
          );
        });
  }
}
