import 'package:flutter/material.dart';

import 'commercial_structures.dart';

class CivilStructuresPage extends StatelessWidget {
  const CivilStructuresPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cartas Azuis (Estruturas Civis)'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Próximo'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CommercialStructuresPage()),
            );
          },
        ),
      ),
    );
  }
}
