// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyElvatedButton extends StatelessWidget {
  String text;
  Color textColor;
  double buttonHeight;
  double buttonWidth;
  Color buttonColor;
  double? buttonRadius;
  Color? buttonSideColor;
  VoidCallback? toDo;
  double? fontSize = 16;

  MyElvatedButton({
    required this.toDo,
    required this.text,
    required this.textColor,
    required this.buttonHeight,
    required this.buttonWidth,
    required this.buttonColor,
    this.buttonRadius,
    this.buttonSideColor,
    this.fontSize,
  }
  );

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: toDo,
      child: Text(
        text,
        style: TextStyle(
          fontFamily: 'ElMessiri',
          color: textColor,
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
        ),
      ),
      style: ElevatedButton.styleFrom(
        fixedSize: Size(buttonWidth, buttonHeight),
        primary: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(buttonRadius??50)),
          side: BorderSide(color: buttonSideColor??buttonColor, width: 3),
        ),
      ),
    );
  }
}