// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rahaty/size_config.dart';
import 'package:rahaty/utils/helpers.dart';
import 'package:rahaty/widget/my_elvated_button.dart';
import 'package:rahaty/widget/my_text_field.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  _SigninScreenState createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> with Helpers {
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _confirmPasswordController;
  bool visible = true;
  bool visible2 = true;
  bool status = false;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              color: Color(0xFFF3F3F3),
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.only(top: 104),
                    child: Image(
                      image: AssetImage('assets/images/logo.png'),
                      width: 45,
                      height: 45,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(top: 20),
                    child: Text(
                      'إنشاء حساب جديد',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(
                      start: SizeConfig().scaleWidth(40),
                      end: SizeConfig().scaleWidth(40),
                    ),
                    child: MyTextField(
                      labelText: 'الإسم بالكامل',
                      textEditingController: _nameController,
                      textInputType: TextInputType.text,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(
                      start: SizeConfig().scaleWidth(40),
                      end: SizeConfig().scaleWidth(40),
                      top: 10,
                    ),
                    child: MyTextField(
                      labelText: 'البريد الإلكتروني',
                      textEditingController: _emailController,
                      textInputType: TextInputType.emailAddress,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(
                      top: 20,
                      start: SizeConfig().scaleWidth(45),
                      end: SizeConfig().scaleWidth(45),
                    ),
                    child: TextField(
                      controller: _passwordController,
                      obscureText: visible,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: 'كلمة المرور',
                        labelStyle: TextStyle(color: Colors.grey.shade500),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(width: 2, color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(width: 2, color: Colors.white),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(width: 2, color: Colors.white),
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              visible ? visible = false : visible = true;
                            });
                          },
                          icon: Icon(visible
                              ? Icons.visibility
                              : Icons.visibility_off),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(
                      top: 20,
                      start: SizeConfig().scaleWidth(45),
                      end: SizeConfig().scaleWidth(45),
                    ),
                    child: TextField(
                      controller: _confirmPasswordController,
                      obscureText: visible,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: 'تأكيد كلمة المرور',
                        labelStyle: TextStyle(color: Colors.grey.shade500),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(width: 2, color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(width: 2, color: Colors.white),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(width: 2, color: Colors.white),
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              visible2 ? visible2 = false : visible2 = true;
                            });
                          },
                          icon: Icon(visible2
                              ? Icons.visibility
                              : Icons.visibility_off),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(start: 45, top: 25),
                    child: Row(
                      children: [
                        Checkbox(
                          value: status,
                          onChanged: (value) {
                            setState(() {
                              status = value!;
                            });
                          },
                          checkColor: Colors.black,
                          activeColor: Colors.white,
                        ),
                        Text(
                          'أوافق على الشروط والقيود.',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(top: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.only(end: 25),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Container(
                              child: Image(
                                image: AssetImage('assets/images/google.png'),
                              ),
                              height: 54,
                              width: 54,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.only(end: 25),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Container(
                              child: Image(
                                image: AssetImage('assets/images/facebook.png'),
                              ),
                              height: 54,
                              width: 54,
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Container(
                            child: Image(
                              image: AssetImage('assets/images/twitter.png'),
                            ),
                            height: 54,
                            width: 54,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(
                      top: SizeConfig().scaleHeight(33),
                      bottom: SizeConfig().scaleHeight(10),
                    ),
                    child: Center(
                      child: MyElvatedButton(
                        toDo: () {
                          performSignIn();
                        },
                        text: 'إنشاء حساب',
                        textColor: Colors.white,
                        buttonHeight: 45,
                        buttonWidth: 279,
                        buttonColor: Color(0xFF57CC99),
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('هل لديك حساب؟',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                      TextButton(
                        onPressed: () {
                             Navigator.pushReplacementNamed(context, '/login_screen');
                        },
                        child: Text(
                          'سجل دخول',
                          style: TextStyle(
                            fontFamily: 'ElMessiri',
                            color: Color(0xFFFF0404),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future performSignIn() async {
    if (checkData()) {
      await signIn();
    }
  }

  bool checkData() {
    if (_nameController.text.isNotEmpty &&
        _emailController.text.isNotEmpty &&
        _passwordController.text.isNotEmpty &&
        _confirmPasswordController.text.isNotEmpty) {
      showSnackBar(context, message: 'تم التسجيل.');
      return true;
    }
    showSnackBar(context, message: 'الرجاء إكمال إدخال البيانات.', error: true);
    return false;
  }

  Future signIn() async {
    //TODO: Login - API Request
    checkData();
  }
}
