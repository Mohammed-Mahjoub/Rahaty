import 'package:flutter/material.dart';
import 'package:rahaty/screens/categorie_screen.dart';

class HomeScreen extends StatefulWidget {
  TabController tabController;
  BuildContext context;

  HomeScreen({required this.tabController, required this.context});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: widget.tabController,
      children: [
        Container(
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
                  // Navigator.pushReplacement(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => CategorieScreen(title: 'شرعي',)));
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
                  primary: Colors.transparent,
                  elevation: 0,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigator.pushReplacement(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => CategorieScreen(title: 'شرعي',)));
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
                  primary: Colors.transparent,
                  elevation: 0,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigator.pushReplacement(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => CategorieScreen(title: 'شرعي',)));
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
                  primary: Colors.transparent,
                  elevation: 0,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigator.pushReplacement(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => CategorieScreen(title: 'شرعي',)));
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
                  primary: Colors.transparent,
                  elevation: 0,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigator.pushReplacement(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => CategorieScreen(title: 'شرعي',)));
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
                  primary: Colors.transparent,
                  elevation: 0,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigator.pushReplacement(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => CategorieScreen(title: 'شرعي',)));
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
              ElevatedButton(
                onPressed: () {
                  // Navigator.pushReplacement(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => CategorieScreen(title: 'شرعي',)));
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
                  primary: Colors.transparent,
                  elevation: 0,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigator.pushReplacement(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => CategorieScreen(title: 'شرعي',)));
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
                  primary: Colors.transparent,
                  elevation: 0,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigator.pushReplacement(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => CategorieScreen(title: 'شرعي',)));
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
                  primary: Colors.transparent,
                  elevation: 0,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigator.pushReplacement(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => CategorieScreen(title: 'شرعي',)));
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
                  primary: Colors.transparent,
                  elevation: 0,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigator.pushReplacement(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => CategorieScreen(title: 'شرعي',)));
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
                  primary: Colors.transparent,
                  elevation: 0,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigator.pushReplacement(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => CategorieScreen(title: 'شرعي',)));
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
              ElevatedButton(
                onPressed: () {
                  // Navigator.pushReplacement(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => CategorieScreen(title: 'شرعي',)));
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
                  primary: Colors.transparent,
                  elevation: 0,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigator.pushReplacement(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => CategorieScreen(title: 'شرعي',)));
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
                  primary: Colors.transparent,
                  elevation: 0,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigator.pushReplacement(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => CategorieScreen(title: 'شرعي',)));
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
                  primary: Colors.transparent,
                  elevation: 0,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigator.pushReplacement(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => CategorieScreen(title: 'شرعي',)));
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
                  primary: Colors.transparent,
                  elevation: 0,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigator.pushReplacement(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => CategorieScreen(title: 'شرعي',)));
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
                  primary: Colors.transparent,
                  elevation: 0,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigator.pushReplacement(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => CategorieScreen(title: 'شرعي',)));
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
              ElevatedButton(
                onPressed: () {
                  // Navigator.pushReplacement(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => CategorieScreen(title: 'شرعي',)));
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
                  primary: Colors.transparent,
                  elevation: 0,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigator.pushReplacement(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => CategorieScreen(title: 'شرعي',)));
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
                  primary: Colors.transparent,
                  elevation: 0,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigator.pushReplacement(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => CategorieScreen(title: 'شرعي',)));
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
                  primary: Colors.transparent,
                  elevation: 0,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigator.pushReplacement(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => CategorieScreen(title: 'شرعي',)));
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
                  primary: Colors.transparent,
                  elevation: 0,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigator.pushReplacement(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => CategorieScreen(title: 'شرعي',)));
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
                  primary: Colors.transparent,
                  elevation: 0,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigator.pushReplacement(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => CategorieScreen(title: 'شرعي',)));
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
        ),
        Container(
          child: Padding(
            padding: const EdgeInsetsDirectional.only(top: 70),
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 40,
                childAspectRatio: 370 / 270,
              ),
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CategorieScreen(title: 'شرعي',)));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 50,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'شرعي',
                            style: TextStyle(
                              fontFamily: 'ElMessiri',
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey.shade400,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CategorieScreen(title: 'إدمان',)));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 50,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'إدمان',
                            style: TextStyle(
                              fontFamily: 'ElMessiri',
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey.shade400,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CategorieScreen(title: 'بالغين',)));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 50,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'بالغين',
                            style: TextStyle(
                              fontFamily: 'ElMessiri',
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey.shade400,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CategorieScreen(title: 'مراهقين',)));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 50,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'مراهقين',
                            style: TextStyle(
                              fontFamily: 'ElMessiri',
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey.shade400,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CategorieScreen(title: 'شيخوخة',)));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 50,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'شيخوخة',
                            style: TextStyle(
                              fontFamily: 'ElMessiri',
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey.shade400,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CategorieScreen(title: 'أطفال',)));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 50,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'أطفال',
                            style: TextStyle(
                              fontFamily: 'ElMessiri',
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey.shade400,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
