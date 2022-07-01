import 'package:flutter/material.dart';
import 'package:seven_wonders_auto_score/pages/treasure.dart';

class WonderBoardPage extends StatelessWidget {
  const WonderBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tabuleiro de Maravilha'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Próximo'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const TreasurePage()),
            );
          },
        ),
      ),
    );
  }
}
