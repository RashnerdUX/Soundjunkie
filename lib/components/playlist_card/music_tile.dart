import 'package:flutter/material.dart';
import 'package:music_player_app/components/components.dart';

class MusicTile extends StatelessWidget {
  const MusicTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 48,
            width: 44,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('evermore.png'),
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(6),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Song Title',
                style: Theme.of(context)
                    .textTheme
                    .labelMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Text(
                    'Artist Name',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(fontSize: 8),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    '2022',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(fontSize: 8),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
