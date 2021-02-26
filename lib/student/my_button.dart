import 'package:flutter/material.dart';
import 'package:utransit_app/student/colors.dart';

class MyButton extends StatelessWidget {

  MyButton({@required this.label, @required this.onpressed});

  final String label;
  final Function onpressed;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: buttonColor,
      padding: EdgeInsets.fromLTRB(0, 10.0, 0, 10.0),
      textColor: Colors.white,
      onPressed: onpressed,
      child: Text(
        label,
        style: TextStyle(
          fontFamily: 'Mulish',
          fontWeight: FontWeight.bold,
          letterSpacing: 1.0,
          fontSize: 18.0,
        ),
      ),
    );
  }
}