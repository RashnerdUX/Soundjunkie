import 'package:flutter/material.dart';
import 'package:music_player_app/models/models.dart';
import 'components.dart';

class ArtistSection extends StatelessWidget {
  const ArtistSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Artists',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(
          height: 80,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => ArtistAvatar(),
            itemCount: 12,
          ),
        ),
      ],
    );
  }
}
