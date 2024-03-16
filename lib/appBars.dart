
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
      title: const Text('GitHub Client Toolbar', style: TextStyle(
        color: Colors.white,
        fontSize: 32,
      ),),
    
      actions: const <Widget>[
        AlertButton(),
        NextPageButton()
      ],
      toolbarHeight: toolbarHeight,
      centerTitle: true,
      backgroundColor: theme.colorScheme.background,
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(toolbarHeight);
}