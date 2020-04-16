import 'package:flutter/material.dart';

class HeroItem extends StatelessWidget {
  final String image;
  final String name;
  final String nickname;

  HeroItem({
    @required this.image,
    @required this.name,
    @required this.nickname,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 1),
            height: 300,
            width: 300,
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
        ],
      ),
    );
  }
}
