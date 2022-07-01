import 'package:flutter/material.dart';
import 'package:seven_wonders_auto_score/pages/scientific_structures.dart';

class CommercialStructuresPage extends StatelessWidget {
  const CommercialStructuresPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cartas Amarelas (Estruturas Comerciais)'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Próximo'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ScientificStructuresPage()),
            );
          },
        ),
      ),
    );
  }
}
