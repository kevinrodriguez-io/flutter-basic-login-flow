import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loginapp/forgot_password.dart';

import 'package:loginapp/signup.dart';
import 'package:loginapp/ui/blur_background.dart';
import 'package:loginapp/ui/hidden_scroll_behavior.dart';

class SignInPageWidget extends StatelessWidget {
  void _goToSignUp(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SignUpPageWidget()),
    );
  }

  void _goToForgotPassword(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ForgotPasswordPageWidget()),
    );
  }

  @override
  Widget build(BuildContext context) {
    Color textFieldActiveColor = Colors.white;
    Color textFieldInactiveColor = Colors.grey;

    var emailField = Container(
      child: TextField(
        cursorColor: textFieldActiveColor,
        style: TextStyle(color: textFieldActiveColor),
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: textFieldInactiveColor),
          ),
          labelText: "Email",
          labelStyle: TextStyle(color: textFieldActiveColor),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: textFieldActiveColor),
          ),
        ),
        autocorrect: false,
      ),
    );
    var passwordField = Container(
      margin: EdgeInsets.only(top: 27.5, bottom: 55),
      child: TextField(
        cursorColor: textFieldActiveColor,
        style: TextStyle(color: textFieldActiveColor),
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: textFieldInactiveColor)),
          labelText: "Password",
          labelStyle: TextStyle(color: textFieldActiveColor),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: textFieldActiveColor),
          ),
        ),
        obscureText: true,
      ),
    );
    var signInButton = Container(
      height: 55,
      child: FlatButton(
        onPressed: () {},
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(27.5),
          ),
        ),
        textColor: Colors.deepOrange,
        padding: EdgeInsets.all(0),
        child: Text(
          "Sign In",
          textAlign: TextAlign.center,
        ),
      ),
    );
    var forgotPassword = Container(
      height: 16,
      margin: EdgeInsets.only(top: 18),
      child: FlatButton(
        onPressed: () => _goToForgotPassword(context),
        textColor: Colors.white,
        padding: EdgeInsets.all(0),
        child: Text(
          "Forgot Password ?",
          textAlign: TextAlign.center,
        ),
      ),
    );
    var firstSignInSeparator = Container(
      height: 17,
      margin: EdgeInsets.only(top: 36),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "or Sign In using",
                style: TextStyle(color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: 80,
                height: 1,
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 75,
                      height: 1,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
    var facebookSignInButton = Container(
      width: 300,
      height: 50,
      margin: EdgeInsets.only(top: 26),
      child: FlatButton.icon(
        icon: Icon(FontAwesomeIcons.facebook),
        onPressed: () {},
        label: Text('Facebook'),
        color: Color.fromARGB(255, 37, 71, 155),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        textColor: Colors.white,
      ),
    );
    var secondSignInSeparator = Container(
      width: 312,
      height: 17,
      margin: EdgeInsets.only(top: 26),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "or",
                style: TextStyle(
                  color: Color.fromARGB(255, 156, 156, 156),
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: 124.5,
                height: 1,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 156, 156, 156),
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 124.5,
                      height: 1,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 156, 156, 156),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
    var googleSignInButton = Container(
      width: 300,
      height: 50,
      margin: EdgeInsets.only(top: 26),
      child: FlatButton.icon(
        icon: Icon(FontAwesomeIcons.google),
        label: Text('Google'),
        onPressed: () {},
        color: Colors.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        textColor: Colors.white,
      ),
    );
    var dontHaveAnAccount = Container(
      margin: EdgeInsets.only(top: 26),
      height: 17,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Don't have an account? ",
            style: TextStyle(color: Colors.grey),
          ),
          FlatButton(
            child: Text(
              'Sign Up',
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            textColor: Colors.white,
            onPressed: () => _goToSignUp(context),
          )
        ],
      ),
    );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          BlurBackground(
            assetImage: 'assets/trees.jpg',
            backDropColor: Colors.black.withOpacity(0.1),
            blurX: 5,
            blurY: 5,
          ),
          SafeArea(
            child: ScrollConfiguration(
              behavior: HiddenScrollBehavior(),
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.all(20),
                children: [
                  emailField,
                  passwordField,
                  signInButton,
                  forgotPassword,
                  firstSignInSeparator,
                  facebookSignInButton,
                  secondSignInSeparator,
                  googleSignInButton,
                  dontHaveAnAccount
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
