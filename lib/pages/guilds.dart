import 'package:flutter/material.dart';

import '../score.dart';

class GuildsPage extends StatelessWidget {
  const GuildsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cartas Roxas (Guildas)'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Próximo'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ScorePage()),
            );
          },
        ),
      ),
    );
  }
}
