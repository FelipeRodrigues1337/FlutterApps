import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  var text;
  Function func;

  MenuButton({@required this.text, @required this.func});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 50.0,
        child: FlatButton(
          color: Colors.blueAccent,
          splashColor: Colors.deepPurple,
          child: Text(
            text,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
              fontFamily: "Big Shoulders Display",
            ),
          ),
          onPressed: func,
        ),
      ),
    );
  }
}
