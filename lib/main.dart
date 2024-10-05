import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:music_player_app/models/models.dart';
import 'package:music_player_app/models/music_player.dart';
import 'package:music_player_app/models/search_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'screens/screens.dart';
import 'package:provider/provider.dart';
import 'models/theme_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized;
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool themeBool = prefs.getBool('isDarkMode') ?? false;
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
          create: (context) => ThemeModel(darkMode: themeBool)),
      ChangeNotifierProvider(create: (context) => NavigationModel()),
      ChangeNotifierProvider(create: (context) => SearchModel()),
      ChangeNotifierProvider(create: (context) => MusicPlayer()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeModel>(
      builder: (context, themeModel, child) {
        return MaterialApp(
          title: 'SoundJunkie',
          theme: themeModel.activeTheme,
          home: HomeScreen(),
        );
      },
    );
  }
}
