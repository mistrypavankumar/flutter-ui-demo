import 'package:flutter/material.dart';
import 'package:flutter_curver_ui0/screens/homeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Color.fromRGBO(108, 225, 197, 1),
      title: "Place Order",
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
