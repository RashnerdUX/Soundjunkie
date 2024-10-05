import 'package:flutter/material.dart';
import 'package:music_player_app/components/home_content/navigation_choice_array.dart';
import 'package:music_player_app/models/theme_model.dart';
import 'package:provider/provider.dart';
import 'package:music_player_app/components/components.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeHeader(),
          const SizedBox(
            height: 16,
          ),
          NavigationChoiceArray(),
          const SizedBox(
            height: 10,
          ),
          const NavigationChoiceContent(),
          const SizedBox(
            height: 16,
          ),
          ArtistSection(),
          const SizedBox(
            height: 16,
          ),
          const PlaylistSection(),
          const SizedBox(
            height: 16,
          ),
          TrendingSection(),
        ],
      ),
    );
  }
}
