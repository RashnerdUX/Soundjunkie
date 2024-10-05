import 'package:flutter/material.dart';
import 'components.dart';

class PlaylistCard extends StatelessWidget {
  const PlaylistCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(18),
        ),
        color: const Color.fromARGB(255, 218, 201, 150),
      ),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PlaylistCardHeader(),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Enjoy these lite hits from the 80s to today #pop #popmusic #hits",
              softWrap: true,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(
              height: 16,
            ),
            PlaylistCardPreview(),
            const SizedBox(
              height: 20,
            ),
            PlaylistCardBotttom(),
          ],
        ),
      ),
    );
  }
}
