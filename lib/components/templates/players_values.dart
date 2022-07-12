import 'package:flutter/material.dart';
import 'package:seven_wonders_auto_score/components/organisms/grid.dart';

class PlayersValuesTemplate extends StatelessWidget {
  final String title;
  final VoidCallback next;
  final Grid inputs;

  const PlayersValuesTemplate(
      {super.key,
      required this.title,
      required this.next,
      required this.inputs});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
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
                key: formKey,
                child: inputs,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              formKey.currentState!.save();
              next.call();
            },
            child: const Text('Próximo'),
          ),
        ],
      ),
    );
  }
}
