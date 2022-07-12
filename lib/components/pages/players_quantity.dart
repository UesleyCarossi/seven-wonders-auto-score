import 'package:flutter/material.dart';
import 'package:seven_wonders_auto_score/components/atoms/button.dart';
import 'package:seven_wonders_auto_score/components/organisms/grid.dart';
import 'package:seven_wonders_auto_score/components/pages/players.dart';
import 'package:seven_wonders_auto_score/components/templates/players_quantity.dart';

class PlayersQuantityPage extends StatelessWidget {
  const PlayersQuantityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PlayersQuantityTemplate(
      title: 'Quantidade de jogadores',
      options: Grid(
        children: [
          Button(
            text: '3',
            action: () => _next(context, 3),
          ),
          Button(
            text: '4',
            action: () => _next(context, 4),
          ),
          Button(
            text: '5',
            action: () => _next(context, 5),
          ),
          Button(
            text: '6',
            action: () => _next(context, 6),
          ),
          Button(
            text: '7',
            action: () => _next(context, 7),
          ),
        ],
      ),
    );
  }

  void _next(BuildContext context, int playerQuantity) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => PlayersPage(playerQuantity: playerQuantity)),
    );
  }
}
