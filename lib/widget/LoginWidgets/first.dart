import 'package:flutter/material.dart';
import 'package:login_minimalist/pages/newuser.page.dart';

class FirstTime extends StatefulWidget {
  @override
  _FirstTimeState createState() => _FirstTimeState();
}

class _FirstTimeState extends State<FirstTime> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80, left: 130),
      child: Container(
        alignment: Alignment.topRight,
        //color: Colors.red,
        height: 30,
        child: Row(
          children: <Widget>[
            Text(
              'Your first time?',
              style: TextStyle(
                fontSize: 10,
                color: Colors.white70,
              ),
            ),
            FlatButton(
              padding: EdgeInsets.all(0),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NewUser()));
              },
              child: Text(
                'Register',
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
