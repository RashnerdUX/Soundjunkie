import 'dart:math';

import 'package:flutter/material.dart';
import 'package:music_player_app/components/components.dart';
import 'package:music_player_app/data/music_data.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:music_player_app/data/data.dart';
import 'package:audioplayers/audioplayers.dart';

class MusicPlayer extends ChangeNotifier {
  MusicFile _activeSong = songs[0];

  final AudioPlayer player = AudioPlayer();
  late Duration _duration = Duration.zero;
  Duration get duration => _duration;

  PlayerState _state = PlayerState.stopped;
  PlayerState get state => _state;

  Duration _position = Duration.zero;
  Duration get position => _position;

  bool _isPlaying = false;
  bool get isPlaying => _isPlaying;

  void updatePlayerStat() {
    player.onDurationChanged.listen((Duration d) {
      _duration = d;
      notifyListeners();
    });
    player.onPositionChanged.listen((Duration d) {
      _position = d;
      notifyListeners();
    });
    player.onPlayerStateChanged.listen((PlayerState s) {
      _state = s;
      notifyListeners();
    });
  }

  void startSong() async {
    await player.play(
      _activeSong.source,
    );
    _isPlaying = true;
    print('Player is playing');
    notifyListeners();
  }

  void pauseSong() async {
    await player.pause();
    _isPlaying = false;
    print('Player is paused');
    notifyListeners();
  }

  void resumeSong() async {
    await player.resume();
    print('Player resumes');
    _isPlaying = false;
    notifyListeners();
  }

  void stopSong() async {
    await player.stop();
    notifyListeners();
  }

  void completeSong() async {}

  void updateSongPosition(Duration d) {
    _position = d;
    notifyListeners();
  }

  Icon playPause() {
    switch (_state) {
      case PlayerState.stopped:
        return Icon(
          Icons.play_circle_fill_rounded,
          size: 64,
        );
      case PlayerState.playing:
        return Icon(
          Icons.pause_circle_filled_rounded,
          size: 64,
        );
      case PlayerState.paused:
        return Icon(
          Icons.play_circle_fill_rounded,
          size: 64,
        );
      default:
        return Icon(
          Icons.restart_alt_rounded,
          size: 64,
        );
    }
  }

  MusicFile get activeSong => _activeSong;

  void playSong(MusicFile newSong) {
    _activeSong = newSong;
    notifyListeners();
  }
}

class DurationState {
  Duration progress;
  Duration buffered;
  Duration total;

  DurationState({
    required this.progress,
    required this.buffered,
    required this.total,
  });
}
