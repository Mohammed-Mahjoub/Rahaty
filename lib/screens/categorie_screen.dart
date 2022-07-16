import 'package:flutter/material.dart';
import 'package:rahaty/screens/doctor_screen.dart';

class CategorieScreen extends StatefulWidget {
  String title;

  CategorieScreen({required this.title});

  @override
  State<CategorieScreen> createState() => _CategorieScreenState();
}

class _CategorieScreenState extends State<CategorieScreen> {
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
              top: 50,
              right: 30,
              child: IconButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/main_screen');
                },
                icon: Icon(Icons.arrow_back_ios),
                color: Colors.white,
              ),
            ),
            Positioned(
              top: 80,
              right: 0,
              left: 0,
              child: Center(
                child: Text(
                  widget.title,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'ElMessiri',
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(top: 150, end: 30, start: 30, bottom: 60),
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: 155 / 170,
                ),
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DoctorScreen(doctorName: 'محمد محجوب', doctorImage: 'assets/images/doc1.png', backTitle: widget.title,)));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(
                        children: [
                          Image(
                            image: AssetImage('assets/images/doc1.png'),
                            fit: BoxFit.cover,
                            height: double.infinity,
                            width: double.infinity,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.only(
                              top: 140,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(255, 255, 255, 80),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 50,
                              width: double.infinity,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text(
                                      'محمد محجوب',
                                      style: TextStyle(
                                        fontFamily: 'ElMessiri',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF57CC99),
                      elevation: 0,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DoctorScreen(doctorName: 'روينا الخالدي', doctorImage: 'assets/images/doc2.png', backTitle: widget.title,)));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(
                        children: [
                          Image(
                            image: AssetImage('assets/images/doc2.png'),
                            fit: BoxFit.cover,
                            height: double.infinity,
                            width: double.infinity,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.only(
                              top: 140,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(255, 255, 255, 80),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 50,
                              width: double.infinity,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text(
                                      'روينا الخالدي',
                                      style: TextStyle(
                                        fontFamily: 'ElMessiri',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                          ),
                        ],
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF57CC99),
                      elevation: 0,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DoctorScreen(doctorName: 'يوسف المقادمة', doctorImage: 'assets/images/doc5.png', backTitle: widget.title,)));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(
                        children: [
                          Image(
                            image: AssetImage('assets/images/doc5.png'),
                            fit: BoxFit.cover,
                            height: double.infinity,
                            width: double.infinity,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.only(
                              top: 140,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(255, 255, 255, 80),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 50,
                              width: double.infinity,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text(
                                      'يوسف المقادمة',
                                      style: TextStyle(
                                        fontFamily: 'ElMessiri',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF57CC99),
                      elevation: 0,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DoctorScreen(doctorName: 'شيما نوفل', doctorImage: 'assets/images/doc3.png', backTitle: widget.title,)));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(
                        children: [
                          Image(
                            image: AssetImage('assets/images/doc3.png'),
                            fit: BoxFit.cover,
                            height: double.infinity,
                            width: double.infinity,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.only(
                              top: 140,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(255, 255, 255, 80),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 50,
                              width: double.infinity,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text(
                                      'شيما نوفل',
                                      style: TextStyle(
                                        fontFamily: 'ElMessiri',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF57CC99),
                      elevation: 0,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DoctorScreen(doctorName: 'وسيم عناية', doctorImage: 'assets/images/doc4.png', backTitle: widget.title,)));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(
                        children: [
                          Image(
                            image: AssetImage('assets/images/doc4.png'),
                            fit: BoxFit.cover,
                            height: double.infinity,
                            width: double.infinity,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.only(
                              top: 140,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(255, 255, 255, 80),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 50,
                              width: double.infinity,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text(
                                      'وسيم عناية',
                                      style: TextStyle(
                                        fontFamily: 'ElMessiri',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF57CC99),
                      elevation: 0,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DoctorScreen(doctorName: 'جميلة المقوسي', doctorImage: 'assets/images/doc6.png', backTitle: widget.title,)));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(
                        children: [
                          Image(
                            image: AssetImage('assets/images/doc6.png'),
                            fit: BoxFit.cover,
                            height: double.infinity,
                            width: double.infinity,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.only(
                              top: 140,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(255, 255, 255, 80),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 50,
                              width: double.infinity,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text(
                                      'جميلة المقوسي',
                                      style: TextStyle(
                                        fontFamily: 'ElMessiri',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      elevation: 0,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
