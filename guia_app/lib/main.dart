import 'package:flutter/material.dart';
import 'package:guiaapp/screen/home.dart';
import 'package:guiaapp/screen/login.dart';
import 'package:guiaapp/theme/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: defaultTheme(),
      home: Login(),
    );
  }
}
