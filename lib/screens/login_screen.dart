// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables


import 'package:flutter/material.dart';
import 'package:rahaty/size_config.dart';
import 'package:rahaty/utils/helpers.dart';
import 'package:rahaty/widget/my_elvated_button.dart';
import 'package:rahaty/widget/my_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with Helpers {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  bool visible = true;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
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
                      'تسجيل الدخول',
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
                      top: 92,
                    ),
                    child: MyTextField(
                      labelText: 'البريد الإلكتروني',
                      textEditingController: _emailController,
                      textInputType: TextInputType.emailAddress,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(
                      top: 39,
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
                    padding: EdgeInsetsDirectional.only(start: 70,top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, '/reset_password_screen');
                          },
                          child: Text(
                            'هل نسيت كلمة المرور؟',
                            style: TextStyle(
                              fontFamily: 'ElMessiri',
                              color: Color(0xFF464646),
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
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
                          performLogin();
                        },
                        text: 'تسجيل دخول',
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
                      Text(
                        'ليس لديك حساب؟',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/sign_in_screen');
                        },
                        child: Text(
                          'أنشئ حساب',
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

  Future performLogin() async {
    if (checkData()) {
      await login();
    }
  }

  bool checkData() {
    if (_emailController.text.isNotEmpty &&
        _passwordController.text.isNotEmpty) {
      showSnackBar(context, message: 'أهلاً بك.');
      return true;
    }
    showSnackBar(context, message: 'البريد الإلكتروني أو كلمة المرور غير صحيحين.', error: true);
    return false;
  }

  Future login() async {
    //TODO: Login - API Request
    if(checkData()){
      Navigator.pushReplacementNamed(context, '/main_screen');
    }
  }
}
