import 'package:flutter/material.dart';
import 'package:music_player_app/components/components.dart';

class PlaylistCardBotttom extends StatelessWidget {
  const PlaylistCardBotttom({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        PlaylistCardButton(
          icon: Icons.play_arrow,
          color: Colors.black12,
        ),
        const SizedBox(width: 12),
        PlaylistCardButton(
          icon: Icons.stream,
        ),
        const SizedBox(width: 12),
        PlaylistCardButton(
          icon: Icons.playlist_add,
        ),
      ],
    );
  }
}
