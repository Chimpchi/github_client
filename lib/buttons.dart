
import 'package:flutter/material.dart';
import 'package:github_client/main.dart';
import 'package:provider/provider.dart';

class AlertButton extends StatelessWidget {
  const AlertButton({super.key});

@override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.add_alert),
      tooltip: 'Alert Tool',
      onPressed: () => {alertButton(context)},
      );
  }
}

class NextPageButton extends StatelessWidget {
  const NextPageButton({super.key});

@override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => {alertButton(context)},
      tooltip: 'Next Page',
      icon: const Icon(Icons.next_plan_outlined)); 
  }
}

class BigAssButton extends StatelessWidget {
  const BigAssButton({super.key});

@override
  Widget build(BuildContext context) {
    var appState = context.watch<GitHubClientAppState>();

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(
        onPressed: () => {appState.getNext()},
        child: const Text("Next"),
        
      ),
    );
  }
}

class LikeButton extends StatelessWidget {
  const LikeButton({super.key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<GitHubClientAppState>();
    var wordPair = appState.current;
    IconData icon;
    Text label;

    if(appState.favoriteWordPairs.contains(wordPair)) {
      icon = Icons.favorite;
      label = const Text("Liked");
    } else {
      icon = Icons.favorite_border;
      label = const Text("Like");
    }

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton.icon(
        onPressed: () => {appState.toggleWordPair()},
        icon: Icon(icon),
        label: label,
        ),
    );
  }

}

void alertButton(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(content: Text('Why did you click the button?'))
  );
}