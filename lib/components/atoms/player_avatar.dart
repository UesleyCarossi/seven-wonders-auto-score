import 'package:flutter/material.dart';

class PlayerAvatar extends StatelessWidget {
  final String player;

  const PlayerAvatar(this.player, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: const Color(0xFF565658),
      radius: 12,
      child: Text(
        player,
        style: const TextStyle(
          fontSize: 12,
          color: Colors.white,
        ),
      ),
    );
  }
}
