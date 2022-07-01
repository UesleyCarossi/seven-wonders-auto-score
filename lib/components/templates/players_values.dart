import 'package:flutter/material.dart';

class PlayersValuesTemplate extends StatelessWidget {
  const PlayersValuesTemplate(
      {Key? key, required this.title, required this.next})
      : super(key: key);

  final String title;
  final VoidCallback next;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: next,
          child: const Text('Próximo'),
        ),
      ),
    );
  }
}
