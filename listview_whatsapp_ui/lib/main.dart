import 'package:flutter/material.dart';
import 'package:listview_whatsapp_ui/listview_object.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListviewObject(),
      theme: ThemeData(
        useMaterial3: false,
        appBarTheme: AppBarTheme(
          color: Colors.green,
        ),
      ),
    );
  }
}
