import "package:flutter/material.dart";
import "package:github_client/app_bars.dart";
import "package:github_client/buttons.dart";

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: const FavoritesAppBar(),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LikeButton(),
              ],
            )
          ],
        ),
        ),

        backgroundColor: theme.colorScheme.background,
    );
  }
}
