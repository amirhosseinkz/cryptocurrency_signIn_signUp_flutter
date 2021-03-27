import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:cryptocurrency_signin_signup/ui/widgets/input_text_field_login.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isRemembered = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(children: [
        CustomInputField(
          hasIcon: false,
          hint: "username",
          label: "USERNAME",
          obSecure: false,
        ),
        CustomInputField(
          hasIcon: true,
          hint: "password",
          label: "PASSWORD",
          icon: Icon(
            Icons.visibility,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 30, bottom: 20),
          child: Row(
            children: [
              Theme(
                data: ThemeData(unselectedWidgetColor: Colors.white),
                child: Checkbox(
                  value: isRemembered,
                  checkColor: Colors.yellow,
                  activeColor: Colors.blue,
                  onChanged: (value) {
                    setState(() {
                      isRemembered = value;
                    });
                  },
                ),
              ),
              Text(
                'Remember me',
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white60),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(30, 5, 30, 10),
          child: RaisedButton(
            padding: EdgeInsets.fromLTRB(50, 15, 50, 15),
            color: Colors.blue,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onPressed: () {},
            elevation: 5,
            child: Center(
              child: Text(
                'SIGN IN',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(30, 5, 30, 10),
          child: RaisedButton(
            padding: EdgeInsets.fromLTRB(50, 15, 50, 15),
            color: Colors.red,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onPressed: () {},
            elevation: 5,
            child: Center(
              child: Text(
                'SIGN IN WITH GOOGLE',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Divider(
            thickness: 1,
            height: 10,
            color: Colors.white60,
          ),
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              "Forgot Password?",
              style: TextStyle(
                  color: Colors.white60,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ))
      ]),
    );
  }
}
