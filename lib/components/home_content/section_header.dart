import 'package:flutter/material.dart';
import 'package:music_player_app/components/components.dart';

//This widget serves as the top of a section on the home screen that accompanies a button

class SectionHeader extends StatelessWidget {
  const SectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Trending Songs',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        MaterialButton(
          onPressed: () {},
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 6),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: const BorderRadius.all(
                Radius.circular(28),
              ),
            ),
            child: Text(
              'Play all',
              style: TextStyle(fontSize: 8),
            ),
          ),
        )
      ],
    );
  }
}
