import "package:flutter/material.dart";
import "package:github_client/app_bars.dart";
import "package:github_client/buttons.dart";
import "package:github_client/main.dart";
import "package:provider/provider.dart";

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

