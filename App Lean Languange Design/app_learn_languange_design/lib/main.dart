import 'package:app_learn_languange_design/Courses_Screen.dart';
import 'package:app_learn_languange_design/HomeScreen.dart';
import 'package:app_learn_languange_design/TranslateScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'translatescreen',
    routes: {
      'mainscreen': (context) => MyApp(),
      'homescreen': (context) => HomeScreen(),
      'course_screen': (context) => CoursesScreen(),
      'translatescreen': (context) => TranslateScreen()
    },
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Screen Button"),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: (){
              Navigator.pushNamed(context, 'homescreen');
            },
            child: Text("Home Screen"),
          ),
          ElevatedButton(
            onPressed: (){
              Navigator.pushNamed(context, 'course_screen');
            },
            child: Text("Course Screen"),
          ),
          ElevatedButton(
            onPressed: (){
              Navigator.pushNamed(context, 'translatescreen');
            },
            child: Text("Translate Screen"),
          ),
        ],
      ),
    );
  }
}

