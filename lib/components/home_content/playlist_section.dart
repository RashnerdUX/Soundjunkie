import 'package:flutter/material.dart';
import 'package:music_player_app/components/components.dart';

//This is the section that shows preview of playlists

class PlaylistSection extends StatelessWidget {
  const PlaylistSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 440,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Playlists for You",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return PlaylistCard();
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 8,
                );
              },
              itemCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}
