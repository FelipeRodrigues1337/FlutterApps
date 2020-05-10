import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 260,
      child: FlatButton(
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          child: Text(
            "Entrar",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        onPressed: () {
        },
      ),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.all(
          Radius.circular(40),
        ),
      ),
    );
  }
}
