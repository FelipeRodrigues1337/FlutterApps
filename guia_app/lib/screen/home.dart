import 'package:flutter/material.dart';
import 'package:guiaapp/home/widgets/button.dart';
import 'package:guiaapp/home/widgets/headText.dart';
import 'package:guiaapp/screen/login.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF1F81C7),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            //Guia ilustrado
            HeadText(Colors.white),
            //espaço/
            SizedBox(
              height: 50,
            ),
            Text(
              "Olá, você é:",
              style: TextStyle(
                fontSize: 38,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 80,
            ),
            HomeButton(
              color: Color(0xFFFFAA7B),
              text: "Professor",
              func: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Login(),
                  ),
                );//aqui vai a função
              }
            ),
            SizedBox(
              height: 30,
            ),
            HomeButton(
              color: Color(0xFFFFAA7B),
              text: "Aluno",
              func: () {},
            ),
            SizedBox(
              height: 90,
            ),
          ],
        ),
      ),
    );
  }
}
