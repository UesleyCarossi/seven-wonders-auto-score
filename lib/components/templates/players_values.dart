import 'package:flutter/material.dart';
import 'package:seven_wonders_auto_score/components/organisms/input_grid.dart';

class PlayersValuesTemplate extends StatelessWidget {
  final String title;
  final VoidCallback next;
  final InputGrid inputGrid;

  PlayersValuesTemplate.player(
      {Key? key, required this.title, required this.next})
      : inputGrid = InputGrid.player(),
        super(key: key);

  PlayersValuesTemplate.score(
      {Key? key, required this.title, required this.next})
      : inputGrid = InputGrid.score(),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      backgroundColor: const Color(0xFF0C0C0C),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child: Form(
                child: inputGrid,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: next,
            child: const Text('Próximo'),
          ),
        ],
      ),
    );
  }
}
