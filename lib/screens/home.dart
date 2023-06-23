import 'package:elegantfurniture/screens/checkout.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/homie.png"),
            fit: BoxFit.cover,
          ),
          color: Colors.red
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return Container(
                    width: constraints.maxWidth * 0.8,
                    height: constraints.maxHeight * 0.6,
                    // You can remove the BoxDecoration from here since it's now the background image.
                  );
                },
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                'Elegant \n Simple \n Furnitures',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: MediaQuery.of(context).size.width * 0.1,
                  fontFamily: 'Nunito',
                ),
              ),
            ),
            SizedBox(height: 50.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: FloatingActionButton(
                child: Icon(Icons.arrow_forward),
                backgroundColor: Colors.white.withOpacity(0.4),
                onPressed: () {

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CheckOutScreen()),
                  );


                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
