import 'package:flutter/material.dart';
import 'package:rahaty/size_config.dart';
import 'package:rahaty/widget/my_elvated_button.dart';

class EditPasswordScreen extends StatefulWidget {
  const EditPasswordScreen({Key? key}) : super(key: key);

  @override
  State<EditPasswordScreen> createState() => _EditPasswordScreenState();
}

class _EditPasswordScreenState extends State<EditPasswordScreen> {
  late TextEditingController _oldPasswordController;
  late TextEditingController _newPasswordController;
  late TextEditingController _confirmNewPasswordController;
  bool visible = true;
  bool visible2 = true;
  bool visible3 = true;
  bool status = false;

  @override
  void initState() {
    super.initState();
    _oldPasswordController = TextEditingController();
    _newPasswordController = TextEditingController();
    _confirmNewPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    _oldPasswordController.dispose();
    _newPasswordController.dispose();
    _confirmNewPasswordController.dispose();
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
              color: Color(0xFF57CC99),
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 150,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(start: 50),
                    child: Text(
                      'كلمة المرور القديمة',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(
                      start: SizeConfig().scaleWidth(40),
                      end: SizeConfig().scaleWidth(40),
                    ),
                    child: TextField(
                      controller: _oldPasswordController,
                      obscureText: visible,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: '********',
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
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(start: 50),
                    child: Text(
                      'كلمة المرور الجديدة',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(
                      start: SizeConfig().scaleWidth(40),
                      end: SizeConfig().scaleWidth(40),
                      top: 10,
                    ),
                    child: TextField(
                      controller: _newPasswordController,
                      obscureText: visible2,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: '********',
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
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(start: 50),
                    child: Text(
                      'تأكيد كلمة المرور الجديدة',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(
                      top: 10,
                      start: SizeConfig().scaleWidth(45),
                      end: SizeConfig().scaleWidth(45),
                    ),
                    child: TextField(
                      controller: _confirmNewPasswordController,
                      obscureText: visible3,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: '********',
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
                              visible3 ? visible3 = false : visible3 = true;
                            });
                          },
                          icon: Icon(visible3
                              ? Icons.visibility
                              : Icons.visibility_off),
                        ),
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
                          setState(() {
                            showDialog(
                              context: context,
                              builder: (_) => AlertDialog(
                                content: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'تم حفظ التغييرات',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: 'ElMessiri',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.check_circle,
                                      color: Colors.green,
                                    ),
                                    SizedBox(
                                      height: 100,
                                    )
                                  ],
                                ),
                              ),
                            );
                          });
                        },
                        text: 'حفظ التغييرات',
                        textColor: Colors.black,
                        buttonHeight: 45,
                        buttonWidth: 279,
                        buttonColor: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 50,
              right: 30,
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/setting_screen');
                },
                child: Text(
                  'إلغاء',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
