import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  ScreenHome({super.key});

  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextFormField(
              controller: _userNameController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "Username")),
          TextFormField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "Password")),
          ElevatedButton.icon(
              onPressed: () {
                checkLogin(context);
              },
              label: const Text("Login"),
              icon: const Icon(Icons.check))
        ],
      ),
    )));
  }

  void checkLogin(BuildContext ctx) {
    final username = _userNameController;
    final password = _passwordController;

    if (username == password) {
      //
    } else {
      const errorMessage = "Username and password doesn't match";

      //Snackbar
      ScaffoldMessenger.of(ctx).showSnackBar(const SnackBar(
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(12),
          content: Text(errorMessage)));

      // Alert Dialog
      showDialog(
          context: ctx,
          builder: (ctx1) => AlertDialog(
                title: const Text("Error"),
                content: const Text(errorMessage),
                actions: [
                  TextButton(
                      onPressed: () => Navigator.of(ctx1).pop(),
                      child: const Text("Close"))
                ],
              ));
    }
  }
}
