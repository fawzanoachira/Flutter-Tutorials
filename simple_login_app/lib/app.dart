import 'package:flutter/material.dart';
import 'package:simple_login_app/screens/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ScreenSplash(),
    );
  }
}
