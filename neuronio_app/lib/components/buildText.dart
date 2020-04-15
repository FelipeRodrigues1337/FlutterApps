import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget BuildInputText(String label, TextEditingController controller) {
  return TextField(
    controller: controller,
    maxLength: 2,
    obscureText: false,
    cursorColor: Colors.white,
    style: TextStyle(
      color: Colors.white,
    ),
    keyboardType: TextInputType.numberWithOptions(signed: true),
    decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.deepPurple),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),

        labelStyle: TextStyle(color: Colors.white, fontSize: 15.0),
        labelText: label),
  );
}

Widget BuildInputRow(String labelx, TextEditingController controllerx,
    String labelw, TextEditingController controllerw) {
  return Row(
    children: <Widget>[
      Expanded(
        child: BuildInputText(labelx, controllerx),
      ),
      Expanded(
        child: BuildInputText(labelw, controllerw),
      ),
    ],
  );
}
