import "package:flutter/material.dart";
import "package:github_client/pages/favorites.dart";
import "package:github_client/pages/home.dart";

class HomeNavigation extends StatefulWidget {
  const HomeNavigation({super.key});

  @override
  State<HomeNavigation> createState() => _HomeNavigationState();
}

class _HomeNavigationState extends State<HomeNavigation> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
      Widget page;

      switch(selectedIndex) {
        case 0:
        page = const Home();
        break;

        case 1:
        page = const Favorite();
        break;

        default:
        throw UnimplementedError("Page Not Implemented");
      }

    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          body: Row(
            children: [
              SafeArea(
                child: NavigationRail(
                  extended: constraints.maxWidth >= 1200,
                  destinations: const [
                    NavigationRailDestination(icon: Icon(Icons.home), label: Text('Home')),
                    NavigationRailDestination(icon: Icon(Icons.favorite), label: Text('Favorites')),
                  ],
                  selectedIndex: selectedIndex,
                  onDestinationSelected: (value) => {
                    setState(() {
                      selectedIndex = value;
                    }
                    )},
                ),
              ),
              Expanded(
                child: Container(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  child: page,
                  )
                ),
            ],
            ),
        );
      }
    );
  }
}