import "package:flutter/material.dart";
import "package:login_screen/source/bloc/bloc.dart";
import "package:login_screen/source/data/provider.dart";

class LoginForm extends StatelessWidget {
  Widget getEmailField(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.email,
      builder: (context, snapshot) {
        return TextField(
          decoration: InputDecoration(
              icon: Icon(Icons.email),
              labelText: "Email",
              hintText: "email@example.com",
              errorText: snapshot.error
          ),
          keyboardType: TextInputType.emailAddress,
          onChanged:bloc.updateEmail,
        );
      },
    );
  }

  Widget getPasswordField(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.password,
      builder: (context, snapshot) {
        return TextField(
          decoration: InputDecoration(
              icon: Icon(Icons.lock),
              labelText: "Password",
              hintText: "your password",
              errorText: snapshot.error
          ),
          obscureText: true,
          onChanged: bloc.updatePassword,
        );
      }
    );
  }

  Widget getSubmitButton(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.submitValidator,
      builder: (context, snapshot) {
        return RaisedButton(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  Color(0xAF667EEA),
                  Color(0xAF764BA2),
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
          onPressed: !snapshot.hasData ? null : () {
            print("Hi there");
          },
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of(context);

    return Container(
      margin: EdgeInsets.all(30.0),
      child: Center(
        child: Form(
          child: Column(
            children: <Widget>[
              getEmailField(bloc),
              SizedBox(height: 20.0),
              getPasswordField(bloc),
              SizedBox(height: 40.0),
              getSubmitButton(bloc)
            ],
          ),
        ),
      ),
    );
  }
}
