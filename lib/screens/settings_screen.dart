import 'package:flutter/material.dart';
import 'package:rahaty/widget/my_elvated_button.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool visible = true;
  bool visible2 = true;
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
              color: Color(0xFF57CC99),
            ),
            Positioned(
              top: 90,
              left: 50,
              right: 50,
              child: Text(
                'الإعدادات',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(top: 170, start: 30, end: 30),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.only(start: 20),
                            child: Text(
                              'اللغة',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'ElMessiri',
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 96,
                            width: 350,
                            child: Card(
                              elevation: 8,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text(
                                    'لغة عربية',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'ElMessiri',
                                      color: Colors.black,
                                    ),
                                  ),
                                  Spacer(),
                                  IconButton(
                                      onPressed: () {
                                        setState(() {
                                          visible = true;
                                        });
                                      },
                                      icon: Icon(
                                        visible ? Icons.check : null,
                                      )),
                                  SizedBox(
                                    width: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 96,
                            width: 350,
                            child: Card(
                              elevation: 8,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text(
                                    'لغة إنجليزية',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'ElMessiri',
                                      color: Colors.black,
                                    ),
                                  ),
                                  Spacer(),
                                  IconButton(
                                      onPressed: () {
                                        setState(() {
                                          visible = false;
                                        });
                                      },
                                      icon: Icon(
                                          visible ? null : Icons.check,
                                      )),
                                  SizedBox(
                                    width: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 96,
                            width: 350,
                            child: Card(
                              elevation: 8,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text(
                                    'الثيم',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'ElMessiri',
                                      color: Colors.black,
                                    ),
                                  ),
                                  Spacer(),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.wb_sunny,
                                        color: Colors.black,
                                      )),
                                  SizedBox(
                                    width: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 96,
                            width: 350,
                            child: Card(
                              elevation: 8,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text(
                                    'كلمة المرور',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'ElMessiri',
                                      color: Colors.black,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    '********',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'ElMessiri',
                                      color: Colors.black,
                                    ),
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        Navigator.pushReplacementNamed(context, '/edit_password_screen');
                                      },
                                      icon: Icon(
                                        Icons.arrow_forward_ios,
                                      )),
                                  SizedBox(
                                    width: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.transparent,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 50,
              right: 30,
              child: IconButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/payment_screen');
                },
                icon: Icon(Icons.arrow_back_ios),
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
