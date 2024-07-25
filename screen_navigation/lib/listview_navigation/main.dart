import 'package:flutter/material.dart';
import 'package:screen_navigation/listview_navigation/screen_one.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ScreenOne(),
    );
  }
}
