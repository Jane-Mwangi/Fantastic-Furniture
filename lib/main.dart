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

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Padding(
          padding: EdgeInsets.only(left: 50.0, top: 100.0),
          child: Container(
            height: 250.0,
            width: 250.0,
            // decoration: const BoxDecoration(
            //   image: AssetImage("assets/images/My project.png"),
            // ),
            decoration: const BoxDecoration(
              image: DecorationImage(image:AssetImage("assets/images/s.png"),fit: BoxFit.scaleDown),
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
        ),
        SizedBox(height: 20.0),
        Row(
          children: [
            const Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 20.0, bottom: 10.0),
                child: Expanded(
                  child: Text(
                    'Elegant \n Simple Furnitures',
                    style: TextStyle(color: Colors.white, fontSize: 39),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20.0,top: 50.0),
              child: FloatingActionButton(
                child: Icon(Icons.arrow_forward),
                  backgroundColor: Colors.white.withOpacity(0.4),
                  onPressed: onPressed),
            )
          ],
        )
      ],
    );
  }
}
