// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rahaty/screens/categorie_screen.dart';
import 'package:rahaty/screens/doctor_details.dart';
import 'package:rahaty/screens/edit_password_screen.dart';
import 'package:rahaty/screens/favorite_screen.dart';
import 'package:rahaty/screens/home_screen.dart';
import 'package:rahaty/screens/launch_screen.dart';
import 'package:rahaty/screens/login_screen.dart';
import 'package:rahaty/screens/main_screen.dart';
import 'package:rahaty/screens/payment_screen.dart';
import 'package:rahaty/screens/profile1_screen.dart';
import 'package:rahaty/screens/profile_edit_screen.dart';
import 'package:rahaty/screens/profile_screen.dart';
import 'package:rahaty/screens/reset_password_screen.dart';
import 'package:rahaty/screens/search_screen.dart';
import 'package:rahaty/screens/settings_screen.dart';
import 'package:rahaty/screens/sign_in_screen.dart';
import 'package:rahaty/screens/treatment_delivery_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        theme: ThemeData(
          textTheme: TextTheme(
            bodyText2: TextStyle(
              fontFamily: 'ElMessiri',
            ),
          ),
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: '/launch_screen',
        routes: {
          '/launch_screen': (context) => LaunchScreen(),
          '/sign_in_screen': (context) => SigninScreen(),
          '/login_screen': (context) => LoginScreen(),
          '/reset_password_screen': (context) => ResetPasswordScreen(),
          '/main_screen': (context) => MainScreen(),
          '/search_screen': (context) => SearchScreen(),
          '/payment_screen': (context) => PaymentScreen(),
          '/treatment_delivery_screen': (context) => TreatmentDeliveryScreen(),
          '/profile1_screen': (context) => Profile1Screen(),
          '/profile_edit_screen': (context) => ProfileEditScreen(),
          '/setting_screen': (context) => SettingsScreen(),
          '/edit_password_screen': (context) => EditPasswordScreen(),
        },
      );
    }
}
