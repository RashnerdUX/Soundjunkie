import 'package:flutter/material.dart';
import 'package:music_player_app/models/search_model.dart';
import 'package:provider/provider.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SearchModel>(builder: (context, search, child) {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Column(
          children: [
            Searchfield(),
          ],
        ),
      );
    });
  }
}

class Searchfield extends StatelessWidget {
  Searchfield({super.key});

  late final SearchController controller;

  @override
  Widget build(BuildContext context) {
    return Consumer<SearchModel>(builder: (context, search, child) {
      controller = search.controller;
      return SearchAnchor(builder: (context, controller) {
        return SearchBar(
          onTap: () {
            controller.openView();
          },
          onChanged: (_) {
            controller.openView();
          },
          padding: WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          ),
          leading: Icon(Icons.search_rounded),
          hintText: 'Search for songs, albums, artists, etc',
        );
      }, suggestionsBuilder: (context, controller) {
        return List.generate(4, (index) {
          return ListTile(
            title: Text("$index"),
            trailing: IconButton(
              onPressed: () {
                controller.closeView('$index');
              },
              icon: Icon(Icons.clear_rounded),
            ),
          );
        });
      });
    });
  }
}
