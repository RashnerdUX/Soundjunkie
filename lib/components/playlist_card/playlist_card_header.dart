import 'package:flutter/material.dart';
import 'package:music_player_app/components/components.dart';

class PlaylistCardHeader extends StatelessWidget {
  const PlaylistCardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 88,
          width: 96,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
            image: DecorationImage(
                image: AssetImage('evermore.png'), fit: BoxFit.cover),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Non-Stop Lite Pop',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              'SoundJunkie',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              '111 Songs',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        )
      ],
    );
  }
}
