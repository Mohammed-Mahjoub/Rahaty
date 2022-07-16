import 'package:flutter/material.dart';
import 'package:rahaty/widget/my_elvated_button.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 70,
                backgroundImage: AssetImage('assets/images/doc1.png'),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'محمد محجوب',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'ElMessiri',
                  color: Colors.black,
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
                        width: 40,
                      ),
                      Icon(Icons.person),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'الحساب',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, '/profile1_screen');
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
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
                        width: 40,
                      ),
                      Icon(Icons.settings),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'الاعدادات',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      IconButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, '/setting_screen');
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
                height: 20,
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
                        width: 40,
                      ),
                      Icon(Icons.group),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'من نحن',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      IconButton(
                          onPressed: () {},
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
                height: 20,
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
                        width: 40,
                      ),
                      Icon(Icons.message),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'اتصل بنا',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      IconButton(
                          onPressed: () {},
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
                height: 20,
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
                        width: 40,
                      ),
                      Icon(Icons.message),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'مركز المساعدة',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      IconButton(
                          onPressed: () {},
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
              Divider(
                color: Colors.transparent,
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
