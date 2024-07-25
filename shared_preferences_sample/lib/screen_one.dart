import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_preferences_sample/screen_two.dart';

class ScreenOne extends StatelessWidget {
  ScreenOne({super.key});

  final _sharedPreferenceValue = TextEditingController();
  @override
  Widget build(BuildContext context) {
    getValueFromStorage(context);
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            controller: _sharedPreferenceValue,
          ),
          ElevatedButton(
              onPressed: () {
                saveValueToStorage();
              },
              child: const Text("Save Value"))
        ],
      ),
    );
  }

  Future<void> saveValueToStorage() async {
    print(_sharedPreferenceValue.text);
    //instance of shared prefernces
    final sharedPreference = await SharedPreferences.getInstance();

    await sharedPreference.setString("value", _sharedPreferenceValue.text);
  }

  Future<void> getValueFromStorage(BuildContext context) async {
    //instance of shared prefernces
    final sharedPreference = await SharedPreferences.getInstance();
    final savedValue = sharedPreference.getString("value");
    if (savedValue != null) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (ctx) => const ScreenTwo(),
      ));
    }
  }
}
