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
                fontSize: 40.0,
                letterSpacing: 1.0,
                color: Colors.blueGrey[500]
            ),
          ),
        ),
    ],
    );
  }
}
