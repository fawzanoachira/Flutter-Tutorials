import 'package:flutter/material.dart';
import 'package:screen_navigation/simple_navigation/screen_one.dart';
import 'package:screen_navigation/simple_navigation/screen_two.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ScreenOne(),
      routes: {
        "screen_1": (ctx) {
          return const ScreenOne();
        },
        "screen_2": (ctx) {
          return const ScreenTwo();
        }
      },
    );
  }
}
