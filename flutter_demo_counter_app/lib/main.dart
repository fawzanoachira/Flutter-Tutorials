import 'package:flutter/material.dart';
import 'package:flutter_demo/screen_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.purple,
      ),
      home: ScreenHome(),
    );
  }
}
