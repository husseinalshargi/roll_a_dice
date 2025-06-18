import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  //a function to run the app (written by flutter framework) should be in the main function
  runApp(
    const MaterialApp(
      //most important widget to run a flutter app is MaterialApp which is a class, it is better to make it const to optimize runtime performance and makes it memory efficent
      home: Scaffold(
        body: GradientContainer(
          colors: [
            Color.fromARGB(255, 26, 2, 80),
            Color.fromARGB(255, 45, 7, 98),
          ],
        ),
      ), //main thing in material app  (home) which defines which kind of ui element is displayed
    ),
  );
}
