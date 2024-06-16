import 'package:flutter/material.dart';

class ListviewSample extends StatelessWidget {
  const ListviewSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Sample Project'),
      ),
      body: SafeArea(
        child: ListView(
          children: List.generate(
            100,
            (index) {
              return Column(
                children: [
                  Text("Text $index"),
                  Divider(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
