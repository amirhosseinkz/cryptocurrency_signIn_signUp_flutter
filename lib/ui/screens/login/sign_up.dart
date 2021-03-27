import 'package:flutter/material.dart';
import 'package:cryptocurrency_signin_signup/ui/widgets/input_text_field_login.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.transparent,
      child: Column(children: [
        CustomInputField(
          hasIcon: false,
          hint: "username",
          label: "USERNAME",
          obSecure: false,
        ),
        CustomInputField(
          hasIcon: false,
          hint: "email",
          label: "EMAIL",
          obSecure: false,
        ),
        CustomInputField(
          hasIcon: false,
          hint: "password",
          label: "PASSWORD",
          obSecure: true,
        ),
        CustomInputField(
          hasIcon: false,
          hint: "confirm",
          label: "CONFIRM PASSWORD",
          obSecure: true,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 22),
          child: Divider(
            thickness: 1,
            height: 10,
            color: Colors.white60,
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(30, 5, 30, 0),
          child: RaisedButton(
            padding: EdgeInsets.fromLTRB(50, 15, 50, 15),
            color: Colors.blue,
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onPressed: () {},
            elevation: 5,
            child: Center(
              child: Text(
                'SIGN UP',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
            ),
          ),
        ),

      ]),
    );
  }
}
