import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class StatefulWidgetLearn extends StatefulWidget {
  StatefulWidgetLearn({Key? key}) : super(key: key);

  @override
  State<StatefulWidgetLearn> createState() => _StatefulWidgetLearnState();
}

class _StatefulWidgetLearnState extends State<StatefulWidgetLearn> {
  @override
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18);
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();

    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i.isOdd) return const Divider();
        final index = i ~/ 2;
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return ListTile(
          title: Text(
            _suggestions[index].asPascalCase,
            style: _biggerFont,
          ),
        );
      },
    );
  }
}
