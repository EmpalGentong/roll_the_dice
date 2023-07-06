import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BackgroundColor extends StatelessWidget {
  BackgroundColor({super.key, required this.counter});

  int counter;

  @override
  Widget build(context){
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.8, 1),
            colors: <Color>[
              Color(0xff1f005c),
              Color(0xff5b0060),
              Color(0xff870160),
              Color(0xffac255e),
              Color(0xffca485c),
              Color(0xffe16b5c),
              Color(0xfff39060),
              Color(0xffffb56b),
            ], // Gradient from https://learnui.design/tools/gradient-generator.html
            tileMode: TileMode.mirror,
          )
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Here\'s your dice',
              style: TextStyle(color: Color.fromARGB(255,255,255,255)),
            ),
            Image.asset(
              'assets/images/dice-${counter}.png',
              width: 200,
            ),
          ],
        ),
      ),
    );
  }
}