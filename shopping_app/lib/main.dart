import 'package:flutter/material.dart';
import 'package:shoppingapp/screen/cart.page.dart';
import 'package:shoppingapp/screen/login.page.dart';
import 'package:shoppingapp/screen/tabs.page.dart';
import 'package:shoppingapp/theme/light.theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightTheme(),
      home: DefaultTabController(
         length: 3,
        child: TabsPage(),
      ),
    );
  }
}
