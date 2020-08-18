// MaterialApp
import 'package:awesome_app/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  //runApp(MyApp());
  runApp(MyNewApp());
}

class MyNewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
    );
  }
}
