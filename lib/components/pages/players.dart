import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:seven_wonders_auto_score/components/atoms/input.dart';
import 'package:seven_wonders_auto_score/components/organisms/grid.dart';
import 'package:seven_wonders_auto_score/components/pages/wonder_board.dart';
import 'package:seven_wonders_auto_score/components/templates/players_values.dart';

class PlayersPage extends StatelessWidget {
  final int playerQuantity;

  PlayersPage({super.key, required this.playerQuantity});

  final List<String> _players = [];

  @override
  Widget build(BuildContext context) {
    return PlayersValuesTemplate(
      title: 'Jogadores',
      inputs: Grid(
        children: List.generate(playerQuantity, (index) {
          return SizedBox(
            width: 65,
            height: 65,
            child: Input(
              keyboardType: TextInputType.text,
              inputFormatters: [
                FilteringTextInputFormatter.allow(
                  RegExp(r'^[a-zA-Z]{1}$'),
                ),
              ],
              onSave: (value) {
                _players.add(value!);
              },
            ),
          );
        }),
      ),
      next: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WonderBoardPage(
              players: {for (var v in _players) v[0]: <String, String>{}},
            ),
          ),
        );
      },
    );
  }
}
