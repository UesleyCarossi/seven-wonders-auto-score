import 'package:flutter/material.dart';
import 'package:seven_wonders_auto_score/components/organisms/grid.dart';

class PlayersQuantityTemplate extends StatelessWidget {
  final String title;
  final Grid options;

  const PlayersQuantityTemplate(
      {super.key, required this.title, required this.options});

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
              child: options,
            ),
          ),
        ],
      ),
    );
  }
}
