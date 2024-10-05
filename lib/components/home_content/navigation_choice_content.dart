import 'package:flutter/material.dart';
import 'package:music_player_app/components/components.dart';

//This widget serves as the content for the choicec chips

class NavigationChoiceContent extends StatelessWidget {
  const NavigationChoiceContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 136,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return MusicCard();
        },
        separatorBuilder: (context, index) {
          return const SizedBox(width: 2);
        },
        itemCount: 8,
      ),
    );
  }
}
