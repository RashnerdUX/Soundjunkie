import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:music_player_app/models/models.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Hi, Snow", style: Theme.of(context).textTheme.displaySmall),
        IconButton(
          onPressed: () {
            final theme = Provider.of<ThemeModel>(context, listen: false);
            theme.updateTheme();
          },
          icon: Provider.of<ThemeModel>(context, listen: false).darkMode
              ? const Icon(Icons.dark_mode)
              : const Icon(Icons.sunny),
        )
        // Icon(Icons.notifications_none_outlined),
      ],
    );
  }
}
