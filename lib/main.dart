import 'package:flutter/material.dart';
import 'package:github_client/navigation_rail.dart';
import 'package:provider/provider.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(const GitHubClientApp());

class GitHubClientApp extends StatelessWidget {
  const GitHubClientApp({super.key});

@override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GitHubClientAppState(),
      child: MaterialApp(
        title: 'GitHUb Toolkit',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFF1A73E8),
            secondary: Colors.white,
            background: const Color.fromARGB(255, 13, 17, 23),
            ),
            appBarTheme: const AppBarTheme(
              foregroundColor: Colors.white,
              backgroundColor: Colors.black,
            ),
        ),

      home: const HomeNavigation(),
      )
    );
  }
}

class GitHubClientAppState extends ChangeNotifier {
  //Word Pair Logic
  var current = WordPair.random();

  void getNext() {
    current = WordPair.random();
    notifyListeners();
  }

// Favorite buutton logic
  var favoriteWordPairs = <WordPair>[];

  void toggleWordPair() {
    if(favoriteWordPairs.contains(current)) {
      favoriteWordPairs.remove(current);
    } else {
      favoriteWordPairs.add(current);
    }

      notifyListeners();
  }

}

class BigCard extends StatelessWidget {
  const BigCard({
    super.key,
    required this.wordPair,
  });

  final WordPair wordPair;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme.displayMedium!.copyWith(
      color: theme.colorScheme.onPrimary,
    );

    return Card(
      color: theme.colorScheme.primary,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(wordPair.asLowerCase, style: style,),
      ),
    );
  }
} 

