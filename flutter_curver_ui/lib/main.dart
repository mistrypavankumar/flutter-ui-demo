import 'package:flutter/material.dart';
import 'package:flutter_curver_ui/screen/homeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Curver UI",
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
