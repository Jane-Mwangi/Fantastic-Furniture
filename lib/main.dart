import 'package:elegantfurniture/screens/home.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF806B7D),
        body: SafeArea(
          child: MyHomePage(),
        ),
      ),
    );
  }
}

