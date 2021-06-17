import 'package:flutter/material.dart';
import 'package:flutter_crash_course/startup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Valencia Organization App",
      debugShowCheckedModeBanner: false,
      home: StartupScreen(),
    );
  }
}
