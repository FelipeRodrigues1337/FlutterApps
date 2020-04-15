import 'package:flutter/material.dart';

import 'ResultBar.widget.dart';
import 'buildText.dart';
import 'menuButton.widget.dart';

// ignore: must_be_immutable
class Commands extends StatelessWidget {
  var globalSoma;
  var lr;
  var fr;
  var fs;
  var sobre;
  var entrada;
  var peso;
  Function soma;
  Function add;

  Commands({
    @required this.globalSoma,
    @required this.lr,
    @required this.fr,
    @required this.fs,
    @required this.sobre,
    @required this.entrada,
    @required this.peso,
    @required this.soma,
    @required this.add,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurpleAccent,
      child: Column(
        children: <Widget>[
          ResultBar(
            globalSoma: globalSoma,
            lr: lr,
            fr: fr,
            fs: fs,
            sobre: sobre,
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: BuildInputRow("Entrada (x)", entrada, "Peso (w)", peso),
          ),
          Row(
            children: <Widget>[
              MenuButton(
                func: add,
                text: "Somar",
              ),
              MenuButton(
                func: add,
                text: "Adicionar",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
