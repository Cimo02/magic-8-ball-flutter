import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        shadowColor: Colors.lightBlue[900],
        title: Text(
          'Magic 8-Ball',
          style: TextStyle(
            color: Colors.lightBlue[800],
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _ballNum = 1;

  void _newAnswer() {
    setState(() {
      _ballNum = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
          onPressed: _newAnswer,
          child: Image.asset('images/ball$_ballNum.png')),
    );
  }
}
