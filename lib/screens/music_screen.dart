import 'package:flutter/material.dart';
import 'package:music_player_app/models/music_player.dart';
import 'package:provider/provider.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:audioplayers/audioplayers.dart';

class MusicScreen extends StatelessWidget {
  const MusicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MusicPlayer>(builder: (context, player, child) {
      return Scaffold(
        body: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 12,
              left: 24,
              right: 24,
            ),
            child: SizedBox(
              height: double.infinity,
              child: Column(
                children: [
                  const SizedBox(height: 8),
                  MusicHeader(),
                  const SizedBox(height: 20),
                  MusicBody(),
                  const SizedBox(height: 20),
                  MusicProgressBar(),
                  const SizedBox(height: 4),
                  MusicButtons(),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}

class MusicProgressBar extends StatelessWidget {
  const MusicProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ProgressBarLine(),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [
        //     Text('0:00'),
        //     Text('3:42'),
        //   ],
        // ),
      ],
    );
  }
}

class ProgressBarLine extends StatelessWidget {
  const ProgressBarLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MusicPlayer>(builder: (context, music, child) {
      return ProgressBar(
        progress: music.position,
        total: music.duration,
        onSeek: (Duration d) {
          music.player.seek(d);
          music.updateSongPosition(d);
        },
        thumbRadius: 6,
      );
    });
  }
}

class MusicBody extends StatelessWidget {
  const MusicBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MusicPlayer>(builder: (context, player, child) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(20),
              right: Radius.circular(20),
            ),
            child: SizedBox(
              height: 320,
              width: double.infinity,
              child: Image(
                image: player.activeSong.cover,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            player.activeSong.title,
            style:
                Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 28),
          ),
          Text(
            player.activeSong.artist,
            style:
                Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 20),
          ),
        ],
      );
    });
  }
}

class MusicButtons extends StatelessWidget {
  const MusicButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MusicPlayer>(builder: (context, music, child) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shuffle_rounded,
                size: 32,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.skip_previous_rounded,
                size: 32,
              )),
          IconButton(
              onPressed: () {
                if (music.state == PlayerState.stopped) {
                  music.startSong();
                } else if (music.state == PlayerState.playing) {
                  music.pauseSong();
                } else if (music.state == PlayerState.paused) {
                  music.resumeSong();
                }
              },
              icon: music.playPause()),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.skip_next_rounded,
                size: 32,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.loop_rounded,
                size: 32,
              )),
        ],
      );
    });
  }
}

class MusicHeader extends StatelessWidget {
  const MusicHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MusicPlayer>(builder: (context, player, child) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.keyboard_arrow_down_rounded),
          ),
          Column(
            children: [
              Text(
                player.activeSong.artist,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                player.activeSong.title,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert_rounded),
          ),
        ],
      );
    });
  }
}
