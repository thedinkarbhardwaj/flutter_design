import 'package:flutter/material.dart';
import 'package:food_designing_ui/DetailProductScreen.dart';
import 'package:food_designing_ui/LoginScreen.dart';
import 'package:food_designing_ui/ReceipeScreen.dart';
import 'package:food_designing_ui/SignupScreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'signup_screen',
    routes: {
      'receipe_screen':(context) => ReceipeScreen(),
      'detail_product_screen':(context) => DetailProductScreen("burger.png","Burger","50"),
      'login_screen':(context) => LoginScreen(),
      'signup_screen':(context) => SignupScreen()
    },

  ));
}

