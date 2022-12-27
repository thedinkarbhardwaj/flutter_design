import 'package:flutter/material.dart';
import 'package:food_designing_ui/DetailProductScreen.dart';
import 'package:food_designing_ui/IntroductionScreenFile.dart';
import 'package:food_designing_ui/LoginScreen.dart';
import 'package:food_designing_ui/ReceipeScreen.dart';
import 'package:food_designing_ui/SignupScreen.dart';
import 'package:food_designing_ui/SplashScreen.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'receipe_screen',
    routes: {
      'introduction_screen':(context) => IntroductionScreenFile(),
      'splash_screen':(context) => SplashScreen(),
      'receipe_screen':(context) => ReceipeScreen(),
      'detail_product_screen':(context) => DetailProductScreen("burger.png","Burger","50"),
      'login_screen':(context) => LoginScreen(),
      'signup_screen':(context) => SignupScreen()
    },

  ));
}

