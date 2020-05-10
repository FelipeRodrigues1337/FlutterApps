import 'package:flutter/material.dart';
import 'package:guiaapp/screen/home.dart';
import 'package:guiaapp/widgets/defaultbutton.widget.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          //color: Colors.red,
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 80),
                child: Column(
                  children: <Widget>[
                    Icon(Icons.brightness_4),
                    Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 40,
                        color: Color(0xFF1F81C7),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Guia ilustrado",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFFFFAA7B),
                      ),
                    ),
                    Text(
                      "Relatividade Restrita",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFFFFAA7B),
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 40,
                  right: 40,
                  top: 20,
                  bottom: 20,
                ),
                child: TextFormField(
                  cursorColor: Color(0xFFFFAA7B),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Usuário ou Email",
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 40,
                  right: 40,
                  top: 20,
                ),
                child: TextFormField(
                  cursorColor: Color(0xFFFFAA7B),
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Senha",
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 20),
                alignment: Alignment.centerRight,
                child: FlatButton(
                  child: Text(
                    "Esqueci a senha",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w300,
                        fontSize: 12),
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                alignment: Alignment.center,
                child: FlatButton(
                  child: Text(
                    "Logar com Google",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                  onPressed: () {},
                ),
              ),
              DefaultButton(),
            ],
          ),
        ),
      ),
    );
  }
}
