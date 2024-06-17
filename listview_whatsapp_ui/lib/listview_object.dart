import 'package:flutter/material.dart';

class ListviewObject extends StatelessWidget {
  const ListviewObject({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Whatsapp"),
      ),
      body: SafeArea(
        child: ListView.separated(
          itemBuilder: (ctx, index) {
            return ListTile(
              title: Text("Person $index"),
              subtitle: Text("Messsage $index"),
              leading: const CircleAvatar(
                radius: 50,
                backgroundColor: Colors.red,
                backgroundImage:
                    AssetImage("assets/images/Assassins-Creed-Symbol.png"),
                // backgroundImage: NetworkImage(
                //     "https://flyclipart.com/thumb2/assassins-creed-a-logo-transparent-png-514476.png"),
              ),
              trailing: const Text("5:00 PM"),
            );
          },
          separatorBuilder: (ctx, index) {
            return const Divider();
          },
          itemCount: 20,
        ),
      ),
    );
  }
}
