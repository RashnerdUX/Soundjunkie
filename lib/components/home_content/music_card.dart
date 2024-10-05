import 'package:flutter/material.dart';
import 'package:music_player_app/components/components.dart';
import 'package:music_player_app/models/music_player.dart';
import 'package:music_player_app/screens/screens.dart';
import 'package:provider/provider.dart';

//This widget serves as a preview of a song's album, artist and song title on the home screen

class MusicCard extends StatelessWidget {
  const MusicCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MusicPlayer>(builder: (context, player, child) {
      return GestureDetector(
        onTap: () {
          // showModalBottomSheet(
          //   context: context,
          //   builder: (context) => MusicScreen(),
          // );
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MusicScreen(),
            ),
          );
          player.updatePlayerStat();
        },
        child: Padding(
          padding: EdgeInsets.all(4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 96,
                width: 96,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                  image: DecorationImage(
                    image: player.activeSong.cover,
                  ),
                ),
                child: Image(
                  image: player.activeSong.cover,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                player.activeSong.title,
                style: Theme.of(context).textTheme.labelLarge,
              ),
              Text(
                player.activeSong.artist,
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ],
          ),
        ),
      );
    });
  }
}
