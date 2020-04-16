import 'package:flutter/material.dart';

import 'hero.item.widget.dart';

class HeroCard extends StatelessWidget {
  final String image;
  final String name;
  final String nickname;

  HeroCard({
    @required this.image,
    @required this.name,
    @required this.nickname,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 30, right: 20, top: 10, bottom: 10),
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
          child: HeroItem(
            image: image,
            nickname: nickname,
            name: name,
          ),
        ),
      ),
    );
  }
}
