import 'package:flutter/material.dart';
import "screens/login/login.dart";

class App extends StatelessWidget {
  Widget build(BuildContext ctx) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LogIn()
    );
  }
}