import 'package:flutter/material.dart';

class ResultText extends StatelessWidget {
  var value;
  var text;
  var sobre;
  var option;

  ResultText(
      {@required this.value, @required this.text, this.sobre, this.option});

  @override
  Widget build(BuildContext context) {
    return option
        ? Text(
            "$text = $value",
            style: TextStyle(
              fontSize: 29.00,
              fontStyle: FontStyle.italic,
              color: Colors.white,
              fontFamily: "Big Shoulders Display",
            ),
          )
        : Text(
            "$text = $value/$sobre",
            style: TextStyle(
              fontSize: 28.00,
              fontStyle: FontStyle.italic,
              color: Colors.white,
              fontFamily: "Big Shoulders Display",
            ),
          );
  }
}
