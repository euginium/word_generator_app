import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final _suggestion = <WordPair>[];
  final _biggerfont = TextStyle(fontSize: 24.0);

  Widget _buildSuggestion() {
    //
    return ListView.builder(
      itemBuilder: (context, int index) {
        if (index.isOdd) {
          return Divider();
        }
        if (index >= _suggestion.length) {
          _suggestion.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestion[index]);
      },
    );
  }

  Widget _buildRow(WordPair pair) {
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerfont,
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(Icons.add_circle_outline),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildSuggestion();
  }
}
