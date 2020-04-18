import 'package:flutter/material.dart';
import "widgets/header/header.dart";
import "widgets/form/form.dart";

class LogIn extends StatefulWidget {
  _LogIn createState() => _LogIn();
}

class _LogIn extends State<LogIn> {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              Colors.white,
              Colors.purple[100],
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          )
        ),
        child: Column(
          children: <Widget>[
            Header(),
            LoginForm()
          ],
        ),
        // color: Colors.grey[300],
      ),
    );
  }
}
