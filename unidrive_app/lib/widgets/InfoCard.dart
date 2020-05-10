import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  String user;
  String partida;
  String destino;

  InfoCard({
    @required this.user,
    @required this.partida,
    @required this.destino,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 15),
      child: Container(
        padding: EdgeInsets.all(10),
        height: 100,
        decoration: BoxDecoration(
            color: Color(0xFF08AEA4),
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
            boxShadow: [
              new BoxShadow(
                color: Colors.black12,
                offset: new Offset(0, 1),
                blurRadius: 9,
                spreadRadius: 4,
              ),
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "@$user vai pra ",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w200,
                    fontSize: 17,
                  ),
                ),
                Text(
                  "Ulbra ",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
                Text(
                  "hoje",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w200,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  partida,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
                Icon(
                  Icons.arrow_right,
                  color: Colors.white,
                ),
                Text(
                  destino,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
