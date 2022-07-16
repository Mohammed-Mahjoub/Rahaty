import 'package:flutter/material.dart';

class DoctorDetails extends StatefulWidget {
  String title;
  String subtitle;

  DoctorDetails({required this.title, required this.subtitle});

  @override
  State<DoctorDetails> createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails> {
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
            Positioned(
              top: 50,
              right: 30,
              child: IconButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/search_screen');
                },
                icon: Icon(Icons.arrow_back_ios),
                color: Colors.black,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                top: 100,
                start: 20,
                end: 20,
              ),
              child: ListView(
                children: [
                  Container(
                    height: 96,
                    width: 245,
                    child: Card(
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        children: [
                          SizedBox(width: 40,),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'إسم الطبيب',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  widget.title,
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey.shade600),
                                ),
                              ],
                            ),
                          ),
                          IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_down_sharp,size: 35,)),
                          SizedBox(width: 20,),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 96,
                    width: 245,
                    child: Card(
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        children: [
                          SizedBox(width: 40,),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'سعر الجلسة',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '100\$',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey.shade600),
                                ),
                              ],
                            ),
                          ),
                          IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_down_sharp,size: 35,)),
                          SizedBox(width: 20,),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 96,
                    width: 245,
                    child: Card(
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        children: [
                          SizedBox(width: 40,),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'القسم',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  widget.subtitle,
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey.shade600),
                                ),
                              ],
                            ),
                          ),
                          IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_down_sharp,size: 35,)),
                          SizedBox(width: 20,),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 96,
                    width: 245,
                    child: Card(
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        children: [
                          SizedBox(width: 40,),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'التقييم',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.star,size: 18,color: Colors.grey.shade700,),
                                    Icon(Icons.star,size: 18,color: Colors.grey.shade700,),
                                    Icon(Icons.star,size: 18,color: Colors.grey.shade700,),
                                    Icon(Icons.star,size: 18,color: Colors.grey.shade700,),
                                    Icon(Icons.star,size: 18,color: Colors.grey.shade700,),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_down_sharp,size: 35,)),
                          SizedBox(width: 20,),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 96,
                    width: 245,
                    child: Card(
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        children: [
                          SizedBox(width: 40,),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'الموعد',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '5 مساءً',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey.shade600),
                                ),
                              ],
                            ),
                          ),
                          IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_down_sharp,size: 35,)),
                          SizedBox(width: 20,),
                        ],
                      ),
                    ),
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
