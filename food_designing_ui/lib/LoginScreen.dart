import 'package:flutter/material.dart';
import 'package:food_designing_ui/DatabaseFiles/db_helper.dart';
import 'package:food_designing_ui/ReceipeScreen.dart';
import 'package:food_designing_ui/SignupScreen.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pushable_button/pushable_button.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
TextEditingController email_controller = new TextEditingController();
TextEditingController pass_controller = new TextEditingController();

class _LoginScreenState extends State<LoginScreen> {



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                HexColor("#2EB62C"),
                HexColor("#57C84D"),
          //  Colors.white24,
            HexColor("#ABE098"),
           // Colors.green
          ], begin: Alignment.topLeft, end: Alignment.bottomLeft)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/loginagain.png",
                width: 200,
                height: 200,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  controller: email_controller,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person, size: 25,
                    color: Colors.black,),
                    labelText: "Email",
                    labelStyle: const TextStyle(color: Colors.black,
                    fontSize: 20,
                    letterSpacing: 3),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(width: 2, color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(width: 3, color: Colors.black),
                    ),
                    hintText: "Enter Email",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 20, left: 20, right: 20, bottom: 5),
                child: TextFormField(
                  controller: pass_controller,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.remove_red_eye, size: 25,
                      color: Colors.black,),
                    labelText: "Password",
                    labelStyle: const TextStyle(color: Colors.black,
                        fontSize: 20,
                        letterSpacing: 3),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(width: 3, color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(width: 3, color: Colors.black),
                    ),
                    hintText: "Enter Password",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.leftToRight,
                                  child: const SignupScreen()));
                        },
                        child: Text(
                          "Signup Here".toUpperCase(),
                          style: const TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              letterSpacing: 2),
                        ))
                  ],
                ),
              ),
              Container(
                width: 200,
                margin: const EdgeInsets.all(20),
                child: PushableButton(
                    child: Text('Login'.toUpperCase(),
                        style: const TextStyle(color: Colors.white, fontSize: 20)),
                    height: 40,
                    elevation: 6,
                    hslColor: const HSLColor.fromAHSL(1.0, 120, 1.0, 0.37),
                    shadow: BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: const Offset(0, 2),
                    ),
                    onPressed: () async {
                      var status = await DbHelper.instance.CHECK_USER_EXIST_OR_NOT({
                        DbHelper.ColumnEmail: email_controller.text,
                        DbHelper.ColumnPass: pass_controller.text
                      });

                      if (status == 0) {
                        MotionToast.error(
                          title: const Text("You Entered Wrong Data"),
                          description: const Text(""),
                        ).show(context);
                      } else {

                        // Store login details in shared preference
                        sharedpref();

                        // MotionToast.success(
                        //   title: const Text("Login Successfully"),
                        //   description: const Text(""),
                        // ).show(context);

                        Navigator.push(context,
                            PageTransition(child: ReceipeScreen(),
                            type: PageTransitionType.leftToRight,
                            duration: Duration(seconds: 3)));
                      }
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }

  // to store login data in shared pref
  void sharedpref() async{

    final pref = await SharedPreferences.getInstance();
    pref.setBool("login", true);

  }
}
