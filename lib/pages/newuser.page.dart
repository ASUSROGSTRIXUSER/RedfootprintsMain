import 'package:flutter/material.dart';
import 'package:login_minimalist/widget/LoginWidgets/buttonNewUser.dart';
import 'package:login_minimalist/widget/LoginWidgets/newEmail.dart';
import 'package:login_minimalist/widget/LoginWidgets/newName.dart';
import 'package:login_minimalist/widget/LoginWidgets/password.dart';
import 'package:login_minimalist/widget/LoginWidgets/TextLogin.dart';
import 'package:login_minimalist/widget/LoginWidgets/userOld.dart';

class NewUser extends StatefulWidget {
  @override
  _NewUserState createState() => _NewUserState();
}

class _NewUserState extends State<NewUser> {
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextLogin(),
                NewNome(),
                NewEmail(),
                PasswordInput(),
                ButtonNewUser(),
                UserOld(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
