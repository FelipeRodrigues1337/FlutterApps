import 'package:flutter/material.dart';
import 'package:keyboard_actions/keyboard_action.dart';
import 'package:neuronioapp/screen/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Neurônio artificial",
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
