import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  String text;
  Color color;
  Function func;

  HomeButton({@required this.text, @required this.color, @required this.func});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
        width: 260,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(
            Radius.circular(40),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      onPressed: func,
    );
  }
}
