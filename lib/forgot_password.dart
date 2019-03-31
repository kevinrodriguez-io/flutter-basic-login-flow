import 'package:flutter/material.dart';
import 'package:loginapp/ui/blur_background.dart';
import 'package:loginapp/ui/hidden_scroll_behavior.dart';

class ForgotPasswordPageWidget extends StatelessWidget {
  void _goToSignIn(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    Color textFieldActiveColor = Colors.white;
    Color textFieldInactiveColor = Colors.grey;

    var emailField = Container(
      margin: EdgeInsets.symmetric(vertical: 27.5),
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
    var forgotPasswordButton = Container(
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
          "Forgot Password",
          textAlign: TextAlign.center,
        ),
      ),
    );
    var dontHaveAnAccount = Container(
      margin: EdgeInsets.only(top: 26),
      height: 17,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "I don't need a password reset,",
            style: TextStyle(color: Colors.grey),
          ),
          FlatButton(
            child: Text(
              'Return',
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            textColor: Colors.white,
            onPressed: () => _goToSignIn(context),
          )
        ],
      ),
    );

    return Scaffold(
      body: Stack(
        children: <Widget>[
          BlurBackground(
            assetImage: 'assets/trees.jpg',
            backDropColor: Colors.black.withOpacity(0.1),
            blurX: 5,
            blurY: 5,
          ),
          Center(
            child: ScrollConfiguration(
              behavior: HiddenScrollBehavior(),
              child: ListView(
                padding: EdgeInsets.all(20.0),
                shrinkWrap: true,
                children: <Widget>[
                  Image.asset(
                    'assets/Dog.png',
                    height: 150,
                    width: 150,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 27.5),
                    child: Text(
                      'Enter your email address and click\non the Reset Password button',
                      style: TextStyle(color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  emailField,
                  forgotPasswordButton,
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
