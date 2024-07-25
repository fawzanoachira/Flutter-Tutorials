import 'package:flutter/material.dart';
import 'package:shared_preferences_sample/screen_one.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScreenOne(),
    );
  }
}