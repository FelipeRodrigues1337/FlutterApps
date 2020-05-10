import 'package:flutter/material.dart';
import 'package:unidriveapp/widgets/InfoCard.dart';

class PegarCaronaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF08AEA4),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 100),
            color: Color(0xFF08AEA4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Pegar",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Carona",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(25),
              children: <Widget>[
                InfoCard(
                  user: "Rodrigo",
                  partida: "Capão da Canoa",
                  destino: "Torres",
                ),
                InfoCard(
                  user: "Rafael",
                  partida: "Arroio Teixeira",
                  destino: "Torres",
                ),
                InfoCard(
                  user: "Guilherme",
                  partida: "Arroio do Sal",
                  destino: "Torres",
                ),
                InfoCard(
                  user: "Guilherme",
                  partida: "Arroio do Sal",
                  destino: "Torres",
                ),
                InfoCard(
                  user: "Guilherme",
                  partida: "Arroio do Sal",
                  destino: "Torres",
                ), InfoCard(
                  user: "Guilherme",
                  partida: "Arroio do Sal",
                  destino: "Torres",
                ),
                InfoCard(
                  user: "Guilherme",
                  partida: "Arroio do Sal",
                  destino: "Torres",
                ), InfoCard(
                  user: "Guilherme",
                  partida: "Arroio do Sal",
                  destino: "Torres",
                ), InfoCard(
                  user: "Guilherme",
                  partida: "Arroio do Sal",
                  destino: "Torres",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
