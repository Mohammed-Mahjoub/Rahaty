import 'package:flutter/material.dart';

class DentestScreen extends StatefulWidget {
  const DentestScreen({Key? key}) : super(key: key);

  @override
  State<DentestScreen> createState() => _DentestScreenState();
}

class _DentestScreenState extends State<DentestScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.grey.shade50,
          //Color(0xFF57CC99)
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(top: 20),
          child: ListView(
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
                      SizedBox(width: 20,),
                      Image(
                        image: AssetImage('assets/images/doc1.png'),
                      ),
                      SizedBox(width: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'محمد محجوب',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'شرعي',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey.shade500),
                          ),
                        ],
                      ),
                      Spacer(),
                      TextButton(onPressed: (){
                        Navigator.pushReplacementNamed(context, '/payment_screen');
                      }, child: Text('تأكيد',style: TextStyle(fontSize: 18),)),
                      SizedBox(width: 10,)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                height: 96,
                width: 350,
                child: Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      SizedBox(width: 20,),
                      Image(
                        image: AssetImage('assets/images/doc2.png'),
                      ),
                      SizedBox(width: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'روينا الخالدي',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'إدمان',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey.shade500),
                          ),
                        ],
                      ),
                      Spacer(),
                      TextButton(onPressed: (){
                        Navigator.pushReplacementNamed(context, '/payment_screen');
                      }, child: Text('تأكيد',style: TextStyle(fontSize: 18),)),
                      SizedBox(width: 10,)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                height: 96,
                width: 350,
                child: Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      SizedBox(width: 20,),
                      Image(
                        image: AssetImage('assets/images/doc3.png'),
                      ),
                      SizedBox(width: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'شيما نوفل',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'مراهقين',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey.shade500),
                          ),
                        ],
                      ),
                      Spacer(),
                      TextButton(onPressed: (){
                        Navigator.pushReplacementNamed(context, '/payment_screen');
                      }, child: Text('تأكيد',style: TextStyle(fontSize: 18),)),
                      SizedBox(width: 10,),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                height: 96,
                width: 350,
                child: Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      SizedBox(width: 20,),
                      Image(
                        image: AssetImage('assets/images/doc4.png'),
                      ),
                      SizedBox(width: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'وسيم عناية',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'أطفال',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey.shade500),
                          ),
                        ],
                      ),
                      Spacer(),
                      TextButton(onPressed: (){
                        Navigator.pushReplacementNamed(context, '/payment_screen');
                      }, child: Text('تأكيد',style: TextStyle(fontSize: 18),)),
                      SizedBox(width: 10,),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                height: 96,
                width: 350,
                child: Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      SizedBox(width: 20,),
                      Image(
                        image: AssetImage('assets/images/doc5.png'),
                      ),
                      SizedBox(width: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'يوسف المقادمة',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'بالغين',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey.shade500),
                          ),
                        ],
                      ),
                      Spacer(),
                      TextButton(onPressed: (){
                        Navigator.pushReplacementNamed(context, '/payment_screen');
                      }, child: Text('تأكيد',style: TextStyle(fontSize: 18),)),
                      SizedBox(width: 10,),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                height: 96,
                width: 350,
                child: Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      SizedBox(width: 20,),
                      Image(
                        image: AssetImage('assets/images/doc6.png'),
                      ),
                      SizedBox(width: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'جميلة المقوسي',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'شيخوخة',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey.shade500),
                          ),
                        ],
                      ),
                      Spacer(),
                      TextButton(onPressed: (){
                        Navigator.pushReplacementNamed(context, '/payment_screen');
                      }, child: Text('تأكيد',style: TextStyle(fontSize: 18),)),
                      SizedBox(width: 10,),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30,),
            ],
          ),
        ),
      ],
    );
  }
}
