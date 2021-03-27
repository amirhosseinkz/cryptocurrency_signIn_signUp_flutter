import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomInputField extends StatefulWidget {
  final String label, hint;
  final bool hasIcon , obSecure;
  final Icon icon;
  const CustomInputField({
    Key key,
    this.label,
    this.hint,
    this.hasIcon,
    this.icon,
    this.obSecure = true,
  }) : super(key: key);

  @override
  _CustomInputFieldState createState() => _CustomInputFieldState();
}

class _CustomInputFieldState extends State<CustomInputField> {
  bool isRemembered = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 45),
          child: Text(
            widget.label,
            style: TextStyle(fontSize: 16 , color: Colors.white60),
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30 , vertical: 10),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white24,
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.symmetric(horizontal: 15.0 , vertical: 3),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    obscureText: widget.obSecure,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.white),
                    ),
                    style: TextStyle(color: Colors.white , fontSize: 18 , fontWeight: FontWeight.bold),
                  ),
                ),
                widget.hasIcon
                    ? IconButton(
                  icon: widget.icon,
                  onPressed: () {
                    setState(() {

                    });
                  },
                )
                    : Container(),
              ],
            ),
          ),
        ),

      ],
    );
  }
}