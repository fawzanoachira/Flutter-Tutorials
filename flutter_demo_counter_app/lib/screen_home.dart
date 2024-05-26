import 'package:flutter/material.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _count++;
          });
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Center(
          child: Text("Counter"),
        ),
      ),
      body: Center(
        child: Text(_count.toString()),
      ),
    );
  }
}
