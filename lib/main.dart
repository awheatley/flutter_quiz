import 'package:flutter/material.dart';
import 'package:flutter_quiz/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(136, 2, 194, 1),
                    Color.fromARGB(255, 96, 2, 136)
                  ]),
            ),
            child: const StartScreen()),
      ),
    ),
  );
}
