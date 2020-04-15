import 'package:flutter/material.dart';
import 'package:neuronioapp/components/resultText.widget.dart';

class ResultBar extends StatelessWidget {
  var globalSoma;
  var lr;
  var fr;
  var fs;
  var sobre;

  ResultBar({
    @required this.globalSoma,
    @required this.lr,
    @required this.fr,
    @required this.fs,
    this.sobre,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black26,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ResultText(
            value: globalSoma,
            text: "S",
            option: true,
          ),
          SizedBox(
            width: 40.0,
          ),
          ResultText(
            value: lr,
            text: "LR",
            option: true,
          ),
          SizedBox(
            width: 40.0,
          ),
          ResultText(
            value: fr,
            text: "FR",
            option: true,
          ),
          SizedBox(
            width: 40.0,
          ),
          ResultText(
            text: "FS",
            value: fs,
            option: false,
            sobre: sobre,
          ),
        ],
      ),
    );
  }
}
