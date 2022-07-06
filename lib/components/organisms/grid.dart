import 'package:flutter/material.dart';
import 'package:seven_wonders_auto_score/components/atoms/input.dart';
import 'package:seven_wonders_auto_score/components/molecules/input_player.dart';

class Grid extends StatelessWidget {
  final List<Widget> children;
  final int size;

  const Grid.quantity({Key? key, required this.children})
      : size = children.length,
        super(key: key);

  Grid.player({Key? key, required this.size})
      : children = List.generate(size, (index) {
          return SizedBox(
            width: 65,
            height: 65,
            child: Input.player(),
          );
        }),
        super(key: key);

  Grid.score({Key? key, required this.size})
      : children = List.generate(size, (index) {
          return SizedBox(
            width: 65,
            height: 65,
            child: InputPlayer(),
          );
        }),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85.0 * 3,
      height: (80.0 * (size / 3).ceil()) + 15,
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
          children: children,
        ),
      ),
    );
  }
}
