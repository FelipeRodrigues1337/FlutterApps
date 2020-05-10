import 'package:flutter/material.dart';
import 'package:unidriveapp/screen/home.dart';
import 'package:unidriveapp/screen/pegar.list.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UniDrive',
      home:  Home(),
    );
  }
}

