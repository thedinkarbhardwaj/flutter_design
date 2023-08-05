import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Image.asset(
                "assests/images/login.png",
                width: 400,
                height: 350,
              )),
              const Padding(
                padding: EdgeInsets.only(left: 20,top: 4,bottom: 5),
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Email",
                        prefixIcon: Icon(Icons.email),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: "Password",
                          prefixIcon: Icon(Icons.lock),
                          suffixText: "Forget?",
                          suffixStyle: TextStyle(color: Colors.blue)),
                      keyboardType: TextInputType.visiblePassword,
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            minimumSize: const Size.fromHeight(50),
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20,
                                letterSpacing: 2.0)),
                        child: const Text("Login")),
                    const SizedBox(height: 20),
                    const Text(
                      "Or login with",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Card(
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Container(
                              margin: EdgeInsets.all(5),
                              child: Image.asset("assests/images/google.png")),
                        ),
                        Card(
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Container(
                              margin: EdgeInsets.all(5),
                              child:
                                  Image.asset("assests/images/facebook.png")),
                        ),
                        Card(
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Container(
                              margin: EdgeInsets.all(5),
                              child: Image.asset("assests/images/apple.png")),
                        ),
                      ],
                    ),
                    SizedBox(height:15),
                    RichText(text: const TextSpan(
                    children: [
                      TextSpan(text: "New to NishadCompany?",style: TextStyle(color: Colors.grey,
                          fontSize: 15)),
                      TextSpan(text: "Register",style: TextStyle(color: Colors.blue,
                          fontSize: 15,
                      fontWeight: FontWeight.bold))
                    ]
                    ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
