import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xFFF5F5F),
          padding: EdgeInsets.only(
            top: 80,
            left: 20,
            right: 20,
            bottom: 40,
          ),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                  top: 40,
                  left: 10,
                  right: 10,
                ),
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  new BoxShadow(
                    color: Colors.black12,
                    offset: new Offset(1, 2.0),
                    spreadRadius: 1,
                    blurRadius: 5,
                  ),
                ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: "Name",
                        labelStyle: TextStyle(color: Colors.green),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(color: Colors.green),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(color: Colors.green),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      height: 60.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                        color: Colors.green,
                      ),
                      child: FlatButton(
                        child: Text(
                          "Signup",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
