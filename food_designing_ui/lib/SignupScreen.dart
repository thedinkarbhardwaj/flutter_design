
import 'package:flutter/material.dart';
import 'package:food_designing_ui/DatabaseFiles/db_helper.dart';
import 'package:food_designing_ui/LoginScreen.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pushable_button/pushable_button.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {



  @override
  Widget build(BuildContext context) {

    TextEditingController name_controller = TextEditingController();
    TextEditingController email_controller = TextEditingController();
    TextEditingController pass_controller = TextEditingController();

    TextEditingValue name;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.greenAccent,
              Colors.green],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            stops: [0.4, 0.7],
            tileMode: TileMode.repeated,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/signup.png", width: 200,height: 200,),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                controller: name_controller,
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
                controller: email_controller,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  labelText: "Email",
                  labelStyle: TextStyle(color: Colors.black),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(width: 3, color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(width: 3, color: Colors.black),
                  ),
                  hintText: "Enter Email",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 20,right: 20,bottom: 5),
              child: TextFormField(
                controller: pass_controller,
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
                  TextButton(onPressed: (){
                    Navigator.push(context, PageTransition(type: PageTransitionType.topToBottom,
                        child: LoginScreen(),
                    duration: Duration(microseconds: 5)));
                  },
                      child: Text("Login Here".toUpperCase(), style: TextStyle(fontSize: 20,
                          color: Colors.black, letterSpacing: 2),))
                ],
              ),
            ),
            Container(
              width: 200,
              margin: EdgeInsets.all(20),
              child: PushableButton(
                child: Text('Signup'.toUpperCase(), style: TextStyle(color: Colors.white, fontSize: 20)),
                height: 40,
                elevation: 6,
                hslColor: HSLColor.fromAHSL(1.0, 120, 1.0, 0.37),
                shadow: BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 7,
                  offset: Offset(0, 2),
                ),
                onPressed: () async {
                var status = DbHelper.instance.INSERT_DATA({DbHelper.ColumnName:name_controller.text,
                    DbHelper.ColumnEmail:email_controller.text,
                    DbHelper.ColumnPass:pass_controller.text
                  });

                // if return 0 means data not enter or if return 1 means data enter
                 if(status == 0){
                   MotionToast.success(
                     title:  Text("wrong "),
                     description:  Text(""),
                   ).show(context);
                 }
                 else{
                   MotionToast.success(
                     title:  Text("success"),
                     description:  Text(""),
                   ).show(context);
                 }

                //  var data = await DbHelper.instance.GET_DATA();
                // MotionToast.success(
                //   title:  Text("Success Motion Toast"),
                //   description:  Text(""+data.toString()),
                // ).show(context);


                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
