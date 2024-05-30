import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
//import 'package:readmore/readmore.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        //logo
        Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Image.asset(
              'assets/randomlogo.png',
              height: 240,
            ),
          ),
        ),

        SizedBox(
          height: 40,
        ),

        Text(
          'Just Don't do It',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),

        SizedBox(
          height: 24,
        ),

        //sub title
        Text(
          'Demo text \n       lorem ipsum',
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w200,
              color: Colors.grey[600]),
        ),

        SizedBox(
          height: 30,
        ),

        //shop now button
        GestureDetector(
          onTap: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomePage())),
          child: Container(
            width: 300,
            height: 70,
            decoration: BoxDecoration(
              color: Colors.black87,
              
              borderRadius: BorderRadius.circular(5),
            ),
            padding: EdgeInsets.all(20),
            child: Center(
              child: Text(
                'Shop Now',
                style: TextStyle(color: Colors.greenAccent[100]),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
