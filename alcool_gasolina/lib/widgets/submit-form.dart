import 'package:flutter/material.dart';
import 'package:alcoolgasolina/widgets/inputs.widgets.dart';
import 'package:alcoolgasolina/widgets/loading-button.widget.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class SubmitForm extends StatelessWidget {
  var gasCtrl = new MoneyMaskedTextController();
  var alCtrl = new MoneyMaskedTextController();
  var busy = false;
  Function submitFunc;

  SubmitForm({
    @required this.gasCtrl,
    @required this.alCtrl,
    @required this.busy,
    @required this.submitFunc,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 30),
          child: Input(
            label: "Gasolina",
            gasCtrl: gasCtrl,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 30),
          child: Input(
            label: "Álcool",
            gasCtrl: alCtrl,
          ),
        ),
        LoadingButton(
          text: "CALCULAR",
          busy: busy,
          func: submitFunc,
          invert: false,
        ),
      ],
    );
  }
}
