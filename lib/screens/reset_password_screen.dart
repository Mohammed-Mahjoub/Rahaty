// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rahaty/size_config.dart';
import 'package:rahaty/utils/helpers.dart';
import 'package:rahaty/widget/my_elvated_button.dart';
import 'package:rahaty/widget/my_text_field.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  _ResetPasswordScreenState createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen>
    with Helpers {
  late TextEditingController _emailController;
  late TextEditingController _mobileNumberController;
  bool visible = true;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _mobileNumberController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _mobileNumberController.dispose();
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
                      'إستعادة كلمة المرور',
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
                      start: SizeConfig().scaleWidth(40),
                      end: SizeConfig().scaleWidth(40),
                      top: 39,
                    ),
                    child: MyTextField(
                      labelText: 'رقم الجوال',
                      textEditingController: _mobileNumberController,
                      textInputType: TextInputType.number,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.only(top: 43, start: 60, end: 60),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'إستعادة عن طريق جوجل',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            child: Image(
                              image: AssetImage('assets/images/google.png'),
                              height: 40,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.only(top: 20, start: 60, end: 60),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'إستعادة عن طريق فيسبوك',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            child: Image(
                              image: AssetImage('assets/images/facebook.png'),
                              height: 40,
                            ),
                          ),
                        ],
                      ),
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
                          performResetPassword();
                        },
                        text: 'إرسال الكود',
                        textColor: Colors.white,
                        buttonHeight: 45,
                        buttonWidth: 279,
                        buttonColor: Color(0xFF57CC99),
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 40,
              right: 20,
              child: IconButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/login_screen');
                },
                icon: Icon(Icons.arrow_back_ios),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future performResetPassword() async {
    if (checkData()) {
      await resetPassword();
    }
  }

  bool checkData() {
    if (_emailController.text.isNotEmpty &&
        _mobileNumberController.text.isNotEmpty) {
      showSnackBar(context, message: 'تم إرسال الكود.');
      return true;
    }
    showSnackBar(context, message: 'يرجى إدخال البيانات.', error: true);
    return false;
  }

  Future resetPassword() async {
    //TODO: Login - API Request
    if (checkData()) {
      //Navigator.pushReplacementNamed(context, '/');
    }
  }
}
