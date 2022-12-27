import 'dart:async';
import 'package:flutter/material.dart';
import 'package:food_designing_ui/IntroductionScreenFile.dart';
import 'package:food_designing_ui/LoginScreen.dart';
import 'package:food_designing_ui/ReceipeScreen.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

   late bool? logindetail;
   late bool? introduction_screen_show_or_not;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    shared_pref();

    Timer(Duration(seconds: 3), () {

      if(logindetail == true){
        Navigator.push(context, PageTransition(child: ReceipeScreen(),
            type: PageTransitionType.leftToRight));
      }
      else {
        if(introduction_screen_show_or_not == true) {
          Navigator.push(context, PageTransition(child: LoginScreen(),
              type: PageTransitionType.leftToRight));
        }
        else{
          Navigator.push(context, PageTransition(child: IntroductionScreenFile(),
              type: PageTransitionType.leftToRight));
        }
      }

    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              HexColor("#74F2CE"),
              //  Colors.white24,
              HexColor("#7CFFCB"),
              // Colors.green
            ], begin: Alignment.topLeft, end: Alignment.bottomLeft)),
     child: Column(
       children: [
         Expanded(
           flex: 11,
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Row(
                   children: [
                     Image.asset("assets/cheese.png", width: 200, height: 200,),
                     Image.asset("assets/doughnut.png", width: 200, height: 200,),
                   ],

                 ),
                 Image.asset("assets/burger.png", width: 200, height: 200,),
               ],
             ),
         ),

         Expanded(
           flex: 1,
           child:  Text("Food Express".toUpperCase(), style: TextStyle(fontSize: 25,
               fontWeight: FontWeight.bold,
               letterSpacing: 10,
               color: Colors.black),
           ),
         ),
       ],

     ),
      ),
    );
  }

  void shared_pref() async{

    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    logindetail = sharedPreferences.getBool("login");

    introduction_screen_show_or_not = sharedPreferences.getBool("introduction_screen_show");
  }
}
