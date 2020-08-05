import 'package:flutter/material.dart';
import 'package:login_minimalist/pages/login.page.dart';

class UserOld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 130),
      child: Container(
        alignment: Alignment.topRight,
        //color: Colors.red,
        height: 30,
        child: Row(
          children: <Widget>[
            Text(
              'Already registered?',
              style: TextStyle(
                fontSize: 10,
                color: Colors.white70,
              ),
            ),
            FlatButton(
             // padding: EdgeInsets.all(0),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
