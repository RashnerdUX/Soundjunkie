import 'package:flutter/material.dart';
import 'package:music_player_app/components/components.dart';

//This is the widget that holds the chips that control the navigation_choice_content.

class NavigationChoiceArray extends StatelessWidget {
  const NavigationChoiceArray({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      alignment: WrapAlignment.start,
      children: [
        NavigationChoice(
          label: 'Movies',
        ),
        NavigationChoice(label: 'Playlists'),
        NavigationChoice(label: 'Artists'),
        NavigationChoice(label: 'Podcasts'),
      ],
    );
  }
}
