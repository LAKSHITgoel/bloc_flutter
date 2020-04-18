import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

import "../../../mixins/validationMixin.dart";

class LoginForm extends StatefulWidget {
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> with ValidationMixin {
  String email = "";
  String password = "";
  final formKey = GlobalKey<FormState>();

  Widget getEmailField() {
    return TextFormField(
      decoration: InputDecoration(
          icon: Icon(Icons.email),
          labelText: "Email",
          hintText: "email@example.com"
      ),
      onChanged: (String email) {
        setState(() {
          this.email = email;
        });
      },
      keyboardType: TextInputType.emailAddress,
      validator: validateEmail,
    );
  }

  Widget getPasswordField() {
    return TextFormField(
        decoration: InputDecoration(
            icon: Icon(Icons.lock),
            labelText: "Password",
            hintText: "your password",
        ),
        onChanged: (String pass) {
          setState(() {
            this.password = password;
          });
        },
        obscureText: true,
        validator: validatePassword,
    );
  }

  Widget getSubmitButton() {
    return RaisedButton(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              Color(0xF0667EEA),
              Color(0xF0764BA2),
            ],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft
          ),
          borderRadius: BorderRadius.circular(30.0)
        ),
        child: Text(
          "Log in",
          style: TextStyle(
              fontSize: 20.0,
              letterSpacing: 1.0, 
              color: Colors.white
          ),
        ),
      padding: EdgeInsets.fromLTRB(60.0, 10.0, 60.0, 10.0),
      ),
      padding: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0)
      ),
      onPressed: () {
        if(formKey.currentState.validate()) {
          formKey.currentState.save();
          print("email: $email & password: $password");
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30.0),
      child: Center(
        child: Form(
          key: formKey,
          child: Column(
            children: <Widget>[
              getEmailField(),
              SizedBox(height: 20.0),
              getPasswordField(),
              SizedBox(height: 40.0),
              getSubmitButton()
            ],
          ),
        ),
      ),
    );
  }
}
