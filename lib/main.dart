import 'package:flutter/material.dart';
import 'package:github_client/appBars.dart';
import 'package:provider/provider.dart';
import 'package:english_words/english_words.dart';
import 'package:github_client/buttons.dart';

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
            background: Colors.black,
            ),
        ),

      home: const Home(),
      )
    );
  }
}

class GitHubClientAppState extends ChangeNotifier {
  var current = WordPair.random();

  void getNext() {
    current = WordPair.random();
    notifyListeners();
  }

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

class Home extends StatelessWidget {
  const Home({super.key});

@override
  Widget build(BuildContext context) {
    var appState = context.watch<GitHubClientAppState>();
    var wordPair = appState.current;

    return Scaffold(
      appBar: const HomeAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BigCard(wordPair: wordPair),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LikeButton(),
                BigAssButton(),
              ],
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () => (),
        focusColor: const Color.fromARGB(255, 43, 49, 56),
        backgroundColor: Colors.grey[850],
        child: const Text('+', style: TextStyle(
          color: Colors.white,
          fontSize: 32
        ),),
      ),

      backgroundColor: const Color.fromARGB(255, 13, 17, 23),
    );
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

