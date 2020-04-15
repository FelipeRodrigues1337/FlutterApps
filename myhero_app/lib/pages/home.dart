import 'package:flutter/material.dart';
import 'package:myheroapp/widgets/hero.card.widget.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.only(top:10,left: 10,right: 10),
        child: ListView(
          children: <Widget>[
            HeroCard(
              image: "assets/mydo.png",
              name: "Izuku Midoriya",
              nickname: "Deku",
            ),
          ],
        ),
      ),
    );
  }
}
