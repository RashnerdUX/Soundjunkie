import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SearchModel extends ChangeNotifier {
  final SearchController _controller = SearchController();

  SearchController get controller => _controller;
}
