import 'package:flutter/material.dart';

class HeroCard extends StatelessWidget {
  final String image;
  final String name;
  final String nickname;

  HeroCard(
      {@required this.image, @required this.name, @required this.nickname});

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 1),
            height: 100,
            width: 100,
            child: CircleAvatar(
              backgroundImage: AssetImage(image),
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Text(
                  nickname,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  ),
                ),
                Text(name),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 30),
            child: Icon(Icons.input),
          ),
        ],
      ),
    );
  }
}
