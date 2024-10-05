import 'package:flutter/material.dart';
import 'package:music_player_app/components/components.dart';

//This is the widget that shows a list of music tiles

class SongList extends StatelessWidget {
  const SongList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: ListView.separated(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return MusicTile();
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 8,
          );
        },
        itemCount: 4,
      ),
    );
  }
}
