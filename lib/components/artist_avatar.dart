import 'package:flutter/material.dart';
import 'package:music_player_app/models/models.dart';
import 'package:provider/provider.dart';

class ArtistAvatar extends StatelessWidget {
  const ArtistAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 8,
        right: 4,
      ),
      child: SizedBox(
        height: 72,
        width: 64,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 28,
              backgroundColor: Provider.of<ThemeModel>(context).darkMode
                  ? Colors.white
                  : Colors.black,
              child: CircleAvatar(
                radius: 26,
                backgroundImage: AssetImage('jennie_kim.jpg'),
              ),
            ),
            const Spacer(),
            Text(
              'JENNIE',
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.labelMedium,
            )
          ],
        ),
      ),
    );
  }
}
