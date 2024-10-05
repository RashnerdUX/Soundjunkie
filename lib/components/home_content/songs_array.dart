import 'package:flutter/material.dart';
import 'package:music_player_app/components/components.dart';

//This widget serves as gallery of music lists

class SongsArray extends StatelessWidget {
  const SongsArray({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return SongList();
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 10,
            );
          },
          itemCount: 4),
    );
  }
}
