import 'package:flutter/material.dart';
import 'package:seven_wonders_auto_score/components/pages/wonder_board.dart';
import 'package:seven_wonders_auto_score/components/templates/players_values.dart';

class PlayersPage extends StatelessWidget {
  const PlayersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PlayersValuesTemplate.player(
        title: 'Jogadores',
        next: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const WonderBoardPage()),
          );
        });
  }
}
