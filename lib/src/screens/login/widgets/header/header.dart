import "package:flutter/material.dart";

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 70.0
        ),
        Center(
          child: Text(
            "Log In",
            style: TextStyle(
                fontSize: 30.0,
                letterSpacing: 1.0
            ),
          ),
        ),
    ],
    );
  }
}
