import 'package:flutter/material.dart';
import "widgets/header/header.dart";
import "widgets/form/form.dart";

class LogIn extends StatelessWidget {

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              Colors.white,
              Colors.lightBlueAccent,
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
      ),
    );
  }
}
