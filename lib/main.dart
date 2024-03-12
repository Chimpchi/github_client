import 'package:flutter/material.dart';
import 'package:github_client/buttons.dart';

void main() => runApp(const GitHubClientApp());

class GitHubClientApp extends StatelessWidget {
  const GitHubClientApp({super.key});

@override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'GitHub Client Toolbar',
          style: TextStyle(
            fontSize: 32,
            color: Colors.white,
            ),
          ),

        actions: const <Widget>[
          AlertButton(),
          NextPageButton()
        ],
        toolbarHeight: 100,
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      
      body: const Center(
        child: Text('Your Data Here', style: TextStyle(
          color: Colors.white,
          fontSize: 24
        ),)
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

