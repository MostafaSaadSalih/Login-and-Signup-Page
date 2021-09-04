import 'package:flutter/material.dart';
import '../screens/log_In_Screen.dart';


void main() {
  runApp(MyApp());
}
Color r = Colors.red;
Color b = Colors.black;
Color w = Colors.white;
Color br= Colors.brown;
Color bl= Colors.blue;

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:logInScreen(),
    );
  }
}
