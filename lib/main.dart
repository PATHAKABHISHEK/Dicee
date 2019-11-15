import 'package:flutter/material.dart';

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
          title: Text('Dicee Game'),
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
  int leftImageNumber = 1;
  int rightImageNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    leftImageNumber = 5;
                    rightImageNumber = 3;
                  });
                },
                child: Image.asset('images/dice$leftImageNumber.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    leftImageNumber = 4;
                    rightImageNumber = 5;
                  });
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
