import 'package:flutter/material.dart';
import 'package:screen_navigation/simple_navigation/screen_two.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Text("Screen 1"),
            ElevatedButton(
                onPressed: () {
                  // Navigator.of(context)
                  //     .push(MaterialPageRoute(builder: (context) {
                  //   return const ScreenTwo();
                  // }));
                  Navigator.of(context).pushNamed('screen_2');
                },
                child: const Text("Go to Screen 2"))
          ],
        ),
      ),
    );
  }
}
