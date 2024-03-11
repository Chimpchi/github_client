import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text(
          'GitHub Client Toolbar',
          style: TextStyle(
            fontSize: 32,
            color: Colors.white,
            ),
          ),

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
        backgroundColor: Colors.grey[850],
        child: const Text('+', style: TextStyle(
          color: Colors.white,
          fontSize: 32
        ),),
        focusColor: const Color.fromARGB(255, 43, 49, 56),
      ),

      backgroundColor: const Color.fromARGB(255, 13, 17, 23),
    ),

  ));
}
