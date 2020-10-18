// MaterialApp
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
    ),
  );
}

/// Home page widget with app bar and body
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sarmad's App"),
      ),
      body: Container(
        child: Text(" Hi Sarmad"),
      ),
    );
  }
}
