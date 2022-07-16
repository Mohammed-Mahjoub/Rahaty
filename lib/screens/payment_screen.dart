import 'package:flutter/material.dart';
import 'package:rahaty/screens/dentest_screen.dart';
import 'package:rahaty/screens/main_screen.dart';
import 'package:rahaty/widget/my_elvated_button.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
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
              color: Colors.grey.shade50,
              //Color(0xFF57CC99)
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(top: 0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Image(
                      image: AssetImage('assets/images/payment.png'),
                    ),
                    SizedBox(
                      height: 3,
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
                            Icon(Icons.payment_outlined),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'paybal',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.add,
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
                            Icon(Icons.payment_outlined),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'payoneer',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.add,
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
                            Icon(Icons.payment_outlined),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'jawwalpay',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.add,
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
                            Icon(Icons.payment_outlined),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'visa',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.add,
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
                    MyElvatedButton(
                      toDo: () {
                           Navigator.pushReplacementNamed(context, '/treatment_delivery_screen');
                      },
                      text: 'تأكيد',
                      textColor: Colors.white,
                      buttonHeight: 50,
                      buttonWidth: 327,
                      buttonColor: Color(0xFF57CC99),
                      fontSize: 18,
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
            ),
            Positioned(
              top: 50,
              right: 30,
              child: IconButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/main_screen');
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
