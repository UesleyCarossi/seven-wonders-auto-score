import 'package:flutter/material.dart';

import 'civil_structures.dart';

class MilitaryConflictsPage extends StatelessWidget {
  const MilitaryConflictsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Conflitos Militares'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Próximo'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CivilStructuresPage()),
            );
          },
        ),
      ),
    );
  }
}
