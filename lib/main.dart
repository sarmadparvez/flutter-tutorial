// MaterialApp
import 'package:flutter/material.dart';

void main() {
  //runApp(MyApp());
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
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Text(
            " I am a box",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          //color: Colors.red,
          width: 100,
          height: 100,
          clipBehavior: Clip.antiAlias,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.red,
              //shape: BoxShape.circle,
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                colors: [
                Colors.pink,
                Colors.yellow,
              ]),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10,
                ),
              ]),
        ),
      ),
    );
  }
}
