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

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sarmad's App"),
      ),
      body: Container(
        height: 100,
        color: Colors.teal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.red,
              width: 100,
              height: 100,
              alignment: Alignment.center,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.yellow,
              width: 100,
              height: 100,
              alignment: Alignment.center,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.green,
              width: 100,
              height: 100,
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
    );
  }
}
