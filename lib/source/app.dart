import "package:flutter/material.dart";
import "screens/login/login.dart";
import "data/provider.dart";

class App extends StatelessWidget {
  Widget build(BuildContext ctx) {
    return Provider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LogIn()
      )
    );
  }
}