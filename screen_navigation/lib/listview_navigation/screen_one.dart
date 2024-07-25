import 'package:flutter/material.dart';
import 'package:screen_navigation/listview_navigation/screen_two.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("Person $index"),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                return ScreenTwo(
                  name: 'Person $index',
                );
              }));
            },
          );
        },
        separatorBuilder: (ctx, index) {
          return const Divider();
        },
        itemCount: 30,
      ),
    );
  }
}
