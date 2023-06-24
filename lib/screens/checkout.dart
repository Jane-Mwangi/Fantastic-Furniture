import 'package:flutter/material.dart';
import 'catalogue1.dart';
import 'catalogue2.dart';
import 'catalogue3.dart';
import 'home.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({Key? key}) : super(key: key);

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  int currentIndex =0;
  final screens =[
    Catalogue1(),
    Catalogue2(),
    Catalogue3(),



  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CheckOutScreen'),
      ),
      body:IndexedStack(
        index: currentIndex,
        children: screens,

      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.cyan,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items:  [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'c1',
             ),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chat',
             ),

        ],
      ),

    );
  }
}
