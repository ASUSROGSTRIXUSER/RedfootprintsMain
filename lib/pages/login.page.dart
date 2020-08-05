import 'package:flutter/material.dart';
import 'package:login_minimalist/widget/LoginWidgets/button.dart';
import 'package:login_minimalist/widget/LoginWidgets/first.dart';
import 'package:login_minimalist/widget/LoginWidgets/forgot.dart';
import 'package:login_minimalist/widget/LoginWidgets/inputEmail.dart';
import 'package:login_minimalist/widget/LoginWidgets/password.dart';
import 'package:login_minimalist/widget/LoginWidgets/textLogin.dart';
//import 'package:login_minimalist/widget/verticalText.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.blueGrey, Colors.black]),
        ),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(children: <Widget>[
                //  VerticalText(),
                  TextLogin(),
                ]),
                InputEmail(),
                PasswordInput(),
                ButtonLogin(),
                FirstTime(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
