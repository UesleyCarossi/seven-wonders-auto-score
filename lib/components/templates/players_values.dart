import 'package:flutter/material.dart';
import 'package:seven_wonders_auto_score/components/atoms/input.dart';

class PlayersValuesTemplate extends StatelessWidget {
  final String title;
  final VoidCallback next;
  final Input input;

  PlayersValuesTemplate.player(
      {Key? key, required this.title, required this.next})
      : input = Input.player(),
        super(key: key);

  PlayersValuesTemplate.score(
      {Key? key, required this.title, required this.next})
      : input = Input.score(),
        super(key: key);

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
              child: Container(
                width: 85 * 3,
                height: 85 * 3,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xFF565658),
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFF28272A),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Form(
                    child: SingleChildScrollView(
                      child: Wrap(
                        runSpacing: 10,
                        spacing: 10,
                        alignment: WrapAlignment.center,
                        children: List.generate(7, (index) {
                          return SizedBox(
                            width: 65,
                            height: 65,
                            child: input,
                          );
                        }),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: next,
            child: const Text('Próximo'),
          ),
        ],
      ),
    );
  }
}
