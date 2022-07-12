import 'package:flutter/material.dart';

class Grid extends StatelessWidget {
  final List<Widget> children;
  final Function? onSave;

  const Grid({super.key, required this.children, this.onSave});

  /*Grid.player({Key? key, required this.size, required this.onSave})
      : children = List.generate(size, (index) {
          return SizedBox(
            width: 65,
            height: 65,
            child: Input.player(onSave: (value) {
              onSave?.call(value);
            }),
          );
        }),
        super(key: key);

  Grid.score(
      {Key? key,
      required this.size,
      required List<String> players,
      required this.onSave})
      : children = List.generate(size, (index) {
          return SizedBox(
            width: 65,
            height: 65,
            child: InputPlayer(
                player: players[index], onSave: (value) => onSave?.call(value)),
          );
        }),
        super(key: key);*/

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85.0 * 3,
      height: (80.0 * (children.length / 3).ceil()) + 15,
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
