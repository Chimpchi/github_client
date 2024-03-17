import 'package:flutter/material.dart';
import 'package:github_client/buttons.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({
    super.key,
  });
  static const toolbarHeight = 100.0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AppBar(
      title: Text('GitHub Client Toolbar', style: TextStyle(
        color: theme.appBarTheme.foregroundColor,
        fontSize: 32,
      ),),
    
      actions: const <Widget>[
        AlertButton(),
        NextPageButton()
      ],
      toolbarHeight: toolbarHeight,
      centerTitle: true,
      backgroundColor: theme.appBarTheme.backgroundColor,
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(toolbarHeight);
}

class FavoritesAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FavoritesAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AppBar(
      title: Text('Favorite Words', style: TextStyle(color: theme.appBarTheme.foregroundColor, fontSize: 32)),
      toolbarHeight: kToolbarHeight,
      centerTitle: true,
      backgroundColor: theme.appBarTheme.backgroundColor,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}