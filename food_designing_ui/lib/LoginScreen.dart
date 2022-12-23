import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pushable_button/pushable_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            HexColor("#A7DCA7"),
            Colors.white24,
            HexColor("#A7DCA7"),
            Colors.green
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomLeft)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/loginagain.png", width: 200,height: 200,),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  labelText: "Username",
                  labelStyle: TextStyle(color: Colors.black),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(width: 3, color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(width: 3, color: Colors.black),
                  ),
                  hintText: "Enter username",

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 20,right: 20,bottom: 5),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  labelText: "Password",
                  labelStyle: TextStyle(color: Colors.black),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(width: 3, color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(width: 3, color: Colors.black),
                  ),
                  hintText: "Enter Password",

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed: (){},
                      child: Text("Signup Here".toUpperCase(), style: TextStyle(fontSize: 20,
                      color: Colors.black, letterSpacing: 2),))
                ],
              ),
            ),
            Container(
              width: 200,
              margin: EdgeInsets.all(20),
              child: PushableButton(
                child: Text('Login'.toUpperCase(), style: TextStyle(color: Colors.white, fontSize: 20)),
                height: 40,
                elevation: 6,
                hslColor: HSLColor.fromAHSL(1.0, 120, 1.0, 0.37),
                shadow: BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 7,
                  offset: Offset(0, 2),
                ),
                onPressed: () => print('Button Pressed!'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
