import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:neuronioapp/components/ResultBar.widget.dart';
import 'package:neuronioapp/components/buildText.dart';
import 'package:keyboard_actions/keyboard_actions.dart';
import 'package:neuronioapp/components/commands.widget.dart';
import 'package:neuronioapp/components/menuButton.widget.dart';
import 'package:neuronioapp/components/resultText.widget.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _entrada = new TextEditingController();
  TextEditingController _peso = new TextEditingController();

  List listEntrada = [];
  var _globalSoma = 0;
  var _lr = 0;
  var _fr = 0;
  var _fs = 0;
  var _sobre = 0;

  addItem() {
    if (_entrada.text.isNotEmpty && _peso.text.isNotEmpty) {
      setState(() {
        var x = int.parse(_entrada.text);
        var w = int.parse(_peso.text);
        _entrada.text = "";
        _peso.text = "";
        listEntrada.add(x * w);
      });
    }
  }

  soma() {
    if (listEntrada.isNotEmpty) {
      setState(() {
        _globalSoma = 0;
        for (int i = 0; i < listEntrada.length; i++) {
          _globalSoma = _globalSoma + listEntrada[i];
        }
        if (_globalSoma <= 0) {
          _lr = -1;
        } else {
          _lr = 1;
        }

        if (_globalSoma < 0) {
          _fr = 0;
        } else if (_globalSoma > 1) {
          _fr = 1;
        } else {
          _fr = _globalSoma;
        }

        if (_globalSoma >= 0) {
          _fs = (1 + _globalSoma * 1) - 1;
          _sobre = (1 + _globalSoma);
        } else {
          _fs = ((1 - _globalSoma) * -1) + 1;
          _sobre = (1 - _globalSoma);
        }
      });
    }
  }

  limparLista() {
    setState(() {
      listEntrada.clear();
      _lr = 0;
      _fr = 0;
      _fs = 0;
      _sobre = 0;
      _globalSoma = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Neurônio artificial",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title: Text("Neurônio artificial"),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: limparLista,
            ),
          ],
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: SizedBox(
                width: 700.0,
                child: ListView.builder(
                    padding: EdgeInsets.only(top: 10.0),
                    itemCount: listEntrada.length,
                    itemBuilder: buildItem),
              ),
            ),
            Commands(
              globalSoma: _globalSoma,
              lr: _lr,
              fr: _fr,
              fs: _fs,
              sobre: _sobre,
              entrada: _entrada,
              peso: _peso,
              soma: soma,
              add: addItem,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildItem(context, index) {
    return Container(
      color: Colors.black26,
      child: Row(
        children: <Widget>[
          Text(
            "Entrada x$index",
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontFamily: "Big Shoulders Display"),
          ),
          SizedBox(
            width: 130.0,
          ),
          Text(
            listEntrada[index].toString(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 26.0,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
