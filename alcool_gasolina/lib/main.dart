import 'package:alcoolgasolina/screen/Home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:alcoolgasolina/widgets/logo.widgets.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:alcoolgasolina/widgets/inputs.widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: HomePage(),
    );
  }
}


