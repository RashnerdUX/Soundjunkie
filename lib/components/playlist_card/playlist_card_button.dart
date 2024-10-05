import 'package:flutter/material.dart';
import 'package:music_player_app/components/components.dart';

class PlaylistCardButton extends StatelessWidget {
  PlaylistCardButton({super.key, required this.icon, this.color});

  IconData icon;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        border: Border.all(
          width: 2,
          style: BorderStyle.solid,
          color: Colors.black26,
        ),
      ),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
