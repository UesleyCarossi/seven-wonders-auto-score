import 'package:flutter/material.dart';
import 'package:seven_wonders_auto_score/components/atoms/input.dart';
import 'package:seven_wonders_auto_score/components/molecules/input_player.dart';

class InputGrid extends StatelessWidget {
  final Input _input;

  InputGrid.player({Key? key})
      : _input = Input.player(),
        super(key: key);

  InputGrid.score({Key? key})
      : _input = InputPlayer(),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Wrap(
          runSpacing: 10,
          spacing: 10,
          alignment: WrapAlignment.center,
          children: List.generate(7, (index) {
            return SizedBox(
              width: 65,
              height: 65,
              child: _input,
            );
          }),
        ),
      ),
    );
  }
}
