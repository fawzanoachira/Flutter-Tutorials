import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  final String name;
  const ScreenTwo({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name)),
    );
  }
}
