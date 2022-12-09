import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard Screen"),
      ),
      body: Center(
        child: Text(
          "Dashboard screen",
          style: TextStyle(
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}
