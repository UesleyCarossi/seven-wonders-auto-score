import 'package:flutter/material.dart';
import 'package:seven_wonders_auto_score/components/atoms/input.dart';
import 'package:seven_wonders_auto_score/components/atoms/player_avatar.dart';

class InputPlayer extends Input {
  InputPlayer({Key? key}) : super.score(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        super.build(context),
        const Positioned.fill(
          top: -10,
          child: Align(
            alignment: Alignment.topCenter,
            child: PlayerAvatar("A"),
          ),
        ),
      ],
    );
  }
}
