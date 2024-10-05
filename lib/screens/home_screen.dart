import 'package:flutter/material.dart';
import 'package:music_player_app/models/models.dart';
import 'package:provider/provider.dart';
import 'package:music_player_app/data/data.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationModel>(
      builder: (context, navigation, child) {
        return Scaffold(
          bottomNavigationBar: NavigationBar(
            selectedIndex: navigation.selectedPage,
            onDestinationSelected: (index) {
              navigation.changeScreen(index);
            },
            labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
            indicatorColor: Colors.purple,
            destinations: const [
              NavigationDestination(
                  icon: Icon(Icons.home_rounded), label: 'Home'),
              NavigationDestination(
                  icon: Icon(Icons.search_rounded), label: 'Search'),
              NavigationDestination(
                  icon: Icon(Icons.favorite_rounded), label: 'Favourites'),
              NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
            ],
          ),
          body: SingleChildScrollView(
            child: screens[navigation.selectedPage],
          ),
        );
      },
    );
  }
}

class HomeNavigation extends StatelessWidget {
  HomeNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: const [
        NavigationDestination(icon: Icon(Icons.home_rounded), label: 'Home'),
        NavigationDestination(
            icon: Icon(Icons.search_rounded), label: 'Search'),
        NavigationDestination(
            icon: Icon(Icons.favorite_rounded), label: 'Favourites'),
        NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
      ],
    );
  }
}
