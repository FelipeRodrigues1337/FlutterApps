import 'package:flutter/material.dart';
import 'package:myheroapp/pages/hero.page.dart';

import 'hero.item.widget.dart';

class HeroCard extends StatelessWidget {
  final String image;
  final String name;
  final String nickname;
  final String power;
  final String gif;

  HeroCard({
    @required this.image,
    @required this.name,
    @required this.nickname,
    @required this.gif,
    @required this.power,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: 10, bottom: 10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            color: Colors.white,
            boxShadow: [
              new BoxShadow(
                color: Colors.black12,
                offset: new Offset(1, 2.0),
                blurRadius: 5,
                spreadRadius: 1,
              ),
            ],
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HeroPage(
                    image: image,
                    nickname: nickname,
                    name: name,
                    power: power,
                    gif: gif,
                  ),
                ),
              );
            },
            child: HeroItem(
              image: image,
              nickname: nickname,
              name: name,
            ),
          ),
        ),
      ),
    );
  }
}
