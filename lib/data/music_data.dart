import 'package:flutter/material.dart';
import 'package:music_player_app/components/components.dart';
import 'package:audioplayers/audioplayers.dart';

List<MusicFile> songs = [
  MusicFile(
    title: 'Mastermind',
    artist: 'Taylor Swift',
    album: 'Evermore',
    genre: 'Pop',
    year: 2022,
    duration: 180,
    cover: AssetImage('evermore.png'),
    source: AssetSource('Mastermind.mp3'),
  ),
];
