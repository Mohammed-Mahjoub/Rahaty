import 'package:flutter/material.dart';
import 'package:rahaty/screens/categorie_screen.dart';
import 'package:rahaty/widget/my_elvated_button.dart';

class DoctorScreen extends StatefulWidget {
  String doctorName;
  String doctorImage;
  String backTitle;

  DoctorScreen(
      {required this.doctorName,
      required this.doctorImage,
      required this.backTitle});

  @override
  State<DoctorScreen> createState() => _DoctorScreenState();
}

class _DoctorScreenState extends State<DoctorScreen> {
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
              color: Colors.white,
              //Color(0xFF57CC99)
            ),
            Positioned(
              top: 50,
              right: 30,
              child: IconButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              CategorieScreen(title: widget.backTitle)));
                },
                icon: Icon(Icons.arrow_back_ios),
                color: Colors.black,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(top: 120),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 70,
                    backgroundImage: AssetImage(widget.doctorImage),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.doctorName,
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
                  Text(
                    'طبيبة مختصة في الطب النفسي\n'
                    'ولديها شهادة جامعية في علاج'
                    '\n        الإضطرابات النفسية.',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'ElMessiri',
                      color: Colors.grey.shade700,
                    ),
                  ),
                  Divider(
                    color: Colors.transparent,
                  ),
                  Container(
                    child: Image(
                      image: AssetImage('assets/images/table.png'),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  MyElvatedButton(
                    toDo: () {
                      setState(() {
                        showDialog(
                          context: context,
                          builder: (_) => AlertDialog(
                            content: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'تم حجز الموعد بنجاح',
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
                    text: 'حجز موعد',
                    textColor: Colors.white,
                    buttonHeight: 45,
                    buttonWidth: 279,
                    buttonColor: Color(0xFF57CC99),
                    fontSize: 18,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
