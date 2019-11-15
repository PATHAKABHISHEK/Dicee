import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red[900],
          title: Text(
            'Dicee Game',
            style: TextStyle(
              fontFamily: 'Pacifico',
            ),
          ),
        ),
        body: DiceeApp(),
      ),
    );
  }
}

class DiceeApp extends StatefulWidget {
  @override
  _DiceeAppState createState() => _DiceeAppState();
}

class _DiceeAppState extends State<DiceeApp> {
  int leftImageNumber = Random().nextInt(5) + 1;
  int rightImageNumber = Random().nextInt(5) + 1;

  void changeImage() {
    setState(() {
      leftImageNumber = Random().nextInt(5) + 1;
      rightImageNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  changeImage();
                },
                child: Image.asset('images/dice$leftImageNumber.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  changeImage();
                },
                child: Image.asset('images/dice$rightImageNumber.png'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
