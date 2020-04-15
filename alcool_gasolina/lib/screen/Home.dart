import 'package:alcoolgasolina/widgets/inputs.widgets.dart';
import 'package:alcoolgasolina/widgets/loading-button.widget.dart';
import 'package:alcoolgasolina/widgets/logo.widgets.dart';
import 'package:alcoolgasolina/widgets/submit-form.dart';
import 'package:alcoolgasolina/widgets/success.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color _color = Colors.deepOrange;

  var _gasCtrl = new MoneyMaskedTextController();

  var _alCtrl = new MoneyMaskedTextController();

  var _busy = false;

  var _completed = false;

  var _resultText = "Compensa utilizar Álcool";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: AnimatedContainer(
        duration: Duration(
          microseconds: 1200,
        ),
        color: _color,
        child: ListView(
          children: <Widget>[
            Logo(),
            _completed
                ? Success(result: _resultText, reset: reset)
                : SubmitForm(
                    gasCtrl: _gasCtrl,
                    alCtrl: _alCtrl,
                    submitFunc: calculate,
                    busy: _busy,
                  ),
          ],
        ),
      ),
    );
  }

  Future calculate() {
    double alc =
        double.parse(_alCtrl.text.replaceAll(new RegExp(r'[,.]'), '')) / 100;
    double gas =
        double.parse(_gasCtrl.text.replaceAll(new RegExp(r'[,.]'), '')) / 100;
    double res = alc / gas;

    setState(() {
      _completed = false;
      _busy = true;
    });

    return new Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _color = Colors.red;
        if (res >= 0.7) {
          _resultText = "Compensa utilizar Gasolina!";
        } else {
          _resultText = "Compensa utilizar Álcool!";
        }
        _busy = false;
        _completed = true;
      });
    });
  }

  reset() {
    setState(() {
      _gasCtrl = new MoneyMaskedTextController();
      _alCtrl = new MoneyMaskedTextController();
      _completed = false;
      _busy = false;
      _color = Colors.deepOrange;
    });
  }
}
