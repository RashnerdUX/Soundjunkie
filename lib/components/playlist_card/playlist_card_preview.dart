import 'package:flutter/material.dart';
import 'package:music_player_app/components/components.dart';

class PlaylistCardPreview extends StatelessWidget {
  const PlaylistCardPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MusicTile(),
        MusicTile(),
        MusicTile(),
      ],
    );
  }
}
