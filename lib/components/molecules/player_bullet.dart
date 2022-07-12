import 'package:flutter/material.dart';
import 'package:seven_wonders_auto_score/components/atoms/input.dart';
import 'package:seven_wonders_auto_score/components/atoms/player_avatar.dart';

class PlayerBullet extends StatelessWidget {
  final String player;
  final Widget child;

  const PlayerBullet({super.key, required this.player, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        child,
        Positioned.fill(
          top: -10,
          child: Align(
            alignment: Alignment.topCenter,
            child: PlayerAvatar(player),
          ),
        ),
      ],
    );
  }
}
