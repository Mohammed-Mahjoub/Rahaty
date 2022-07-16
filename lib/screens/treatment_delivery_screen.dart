import 'package:flutter/material.dart';
import 'package:rahaty/widget/my_elvated_button.dart';

class TreatmentDeliveryScreen extends StatefulWidget {
  const TreatmentDeliveryScreen({Key? key}) : super(key: key);

  @override
  State<TreatmentDeliveryScreen> createState() =>
      _TreatmentDeliveryScreenState();
}

class _TreatmentDeliveryScreenState extends State<TreatmentDeliveryScreen> {
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
                'توصيل العلاج',
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
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
                              'الإسم بالكامل',
                              style: TextStyle(
                                fontSize: 18,
                              ),
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
                              width: 40,
                            ),
                            Icon(Icons.call),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'رقم الجوال',
                              style: TextStyle(
                                fontSize: 18,
                              ),
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
                              width: 40,
                            ),
                            Icon(Icons.location_on),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'الدولة / مكان الإقامة',
                              style: TextStyle(
                                fontSize: 18,
                              ),
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
                              width: 40,
                            ),
                            Icon(Icons.location_city),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'المدينة',
                              style: TextStyle(
                                fontSize: 18,
                              ),
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
                              width: 40,
                            ),
                            Icon(Icons.home_outlined),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'المنطقة / الشارع',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
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
                                    'تمت العملية بنجاح',
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
                      text: 'تأكيد',
                      textColor: Colors.black,
                      buttonHeight: 50,
                      buttonWidth: 327,
                      buttonColor: Colors.white,
                      fontSize: 18,
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
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
