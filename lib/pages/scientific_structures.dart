import 'package:flutter/material.dart';

import 'guilds.dart';

class ScientificStructuresPage extends StatelessWidget {
  const ScientificStructuresPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cartas Verdes (Estruturas Científicas)'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Próximo'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const GuildsPage()),
            );
          },
        ),
      ),
    );
  }
}
