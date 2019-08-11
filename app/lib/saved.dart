import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'styles.dart';

class Saved {
  static Scaffold make(BuildContext context, Set<WordPair> saved) {
    final Iterable<ListTile> tiles = saved.map(
      (WordPair pair) {
        return ListTile(
          title: Text(
            pair.asPascalCase,
            style: Style.biggerFont(),
          )
        );
      },
    );
    final List<Widget> divided = ListTile.divideTiles(
      context: context,
      tiles: tiles,
    ).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Saved Suggestions'),
      ),
      body: ListView(children: divided),
    );
  }
}