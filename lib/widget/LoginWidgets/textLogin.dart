import 'package:flutter/material.dart';

class TextLogin extends StatefulWidget {
  @override
  _TextLoginState createState() => _TextLoginState();
}

class _TextLoginState extends State<TextLogin> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Container(
        //color: Colors.green,
        height: 200,
        width: 200,
        child: Column(
          children: <Widget>[
            Center(child: Image.asset('lib/assets/new_logo.png')),
          ],
        ),
      ),
    );
  }
}
