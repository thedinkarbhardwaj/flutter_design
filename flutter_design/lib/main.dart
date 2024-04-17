import 'package:flutter/material.dart';
import 'package:flutter_design/screens/bottom_bar.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter",
      theme: ThemeData(
        primarySwatch: Colors.brown
      ),
      home: const BottomBarScreen(),
    );
  }
}
