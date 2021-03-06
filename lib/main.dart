import 'dart:math';
import 'package:flutter/material.dart';


void main() => runApp(
  MaterialApp(
    home: MyApp(),
  ),
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade700,
        title: Text('Ask Anything'),
      ),
      body: Ball(),
    );
  }
}


class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}


class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            ballNumber = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('assets/images/ball$ballNumber.png'),
      ),
    );
  }
}