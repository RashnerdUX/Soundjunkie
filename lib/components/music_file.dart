import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class MusicFile {
  MusicFile({
    required this.title,
    required this.artist,
    required this.album,
    required this.genre,
    required this.year,
    required this.duration,
    required this.cover,
    required this.source,
  });
  String title;
  String artist;
  String album;
  String genre;
  int year;
  int duration;
  ImageProvider cover;
  AssetSource source;
}
