import 'package:flutter/material.dart';
import 'package:seven_wonders_auto_score/components/organisms/grid.dart';

class PlayersValuesTemplate extends StatelessWidget {
  final String title;
  final VoidCallback next;
  final Grid grid;
  final int size;

  PlayersValuesTemplate(
      {Key? key, required this.title, required this.next, required this.grid})
      : size = grid.size,
        super(key: key);

  PlayersValuesTemplate.player(
      {Key? key, required this.title, required this.next, required this.size})
      : grid = Grid.player(size: size),
        super(key: key);

  PlayersValuesTemplate.score(
      {Key? key, required this.title, required this.next, required this.size})
      : grid = Grid.score(size: size),
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
                child: grid,
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
