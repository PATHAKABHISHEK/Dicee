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
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
