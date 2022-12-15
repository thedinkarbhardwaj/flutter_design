
import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Shimmer Effect'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool value = true;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body:Shimmer(
        direction: ShimmerDirection.fromLTRB(),
        duration: Duration(seconds: 3),
        enabled: value,
        color: Colors.black,
        colorOpacity: 0.3,
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.purple,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: ElevatedButton(
                  onPressed: (){

                    setState(() {
                      value = false;
                    });
                  },
                  child: Text("Stop Animation"),
                ),
              ),
              Container(
                child: ElevatedButton(
                  onPressed: (){

                    setState(() {
                      value = true;
                    });
                  },
                  child: Text("Start Animation"),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
