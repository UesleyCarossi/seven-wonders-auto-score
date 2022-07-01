import 'package:flutter/material.dart';

import 'military_conflicts.dart';

class TreasurePage extends StatelessWidget {
  const TreasurePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tesouro'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Próximo'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MilitaryConflictsPage()),
            );
          },
        ),
      ),
    );
  }
}
