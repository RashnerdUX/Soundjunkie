import 'package:flutter/material.dart';
import 'package:music_player_app/components/components.dart';

//This widget serves as the selection for the navigation choice content

class NavigationChoice extends StatelessWidget {
  NavigationChoice({required this.label});

  late String label;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(label),
      selected: false,
      backgroundColor: Colors.grey,
      selectedColor: Colors.blue,
      showCheckmark: false,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      labelStyle: Theme.of(context).textTheme.labelMedium,
      padding: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
    );
  }
}
