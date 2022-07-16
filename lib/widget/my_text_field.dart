// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  TextInputType textInputType;
  String labelText;
  TextEditingController textEditingController;
  bool secure;

  MyTextField({
    this.textInputType = TextInputType.text,
    this.secure = false,
    required this.labelText,
    required this.textEditingController,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: 5, end: 5, top: 10),
      child: TextField(
        obscureText: secure,
        keyboardType: textInputType,
        controller: textEditingController,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          labelText: labelText,
          labelStyle: TextStyle(color: Colors.grey.shade500,fontFamily: 'ElMessiri'),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
                width: 2,
                color: Colors.white
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
                width: 2,
                color: Colors.white
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              width: 2,
              color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
}

// TextField(
// controller: _emailController,
// keyboardType: TextInputType.emailAddress,
// decoration: InputDecoration(
// labelText: 'البريد الإلكتروني',
// enabledBorder: UnderlineInputBorder(
// borderSide: BorderSide(
// color: Color(0xFFC653CB),
// width: 2,
// ),
// ),
// focusedBorder:  UnderlineInputBorder(
// borderSide: BorderSide(
// color: Color(0xFFC653CB),
// width: 2,
// ),
// ),
// ),
// ),

// decoration: InputDecoration(
// labelText: lableText,
// enabledBorder: OutlineInputBorder(
// borderSide: BorderSide(
// color: outLineBorderColor,
// width: 2,
// ),
// borderRadius: BorderRadius.circular(22),
// ),
// focusedBorder: OutlineInputBorder(
// borderRadius: BorderRadius.circular(22),
// borderSide: BorderSide(
// color: outLineBorderColor,
// width: 2,
// ),
// ),
// ),
