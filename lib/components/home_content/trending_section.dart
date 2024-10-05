import 'package:flutter/material.dart';
import 'package:music_player_app/components/components.dart';

//This widget serves as the section that shows trending songs and albums

class TrendingSection extends StatelessWidget {
  const TrendingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 360,
      child: Column(
        children: [
          SectionHeader(),
          SizedBox(height: 16),
          SongsArray(),
        ],
      ),
    );
  }
}
