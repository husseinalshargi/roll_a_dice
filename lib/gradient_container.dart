import 'package:flutter/material.dart';
import 'package:first_app/dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

// to create a custom widget
class GradientContainer extends StatelessWidget { //StatelessWidget if it only accepts data and return data without changing anything
  const GradientContainer({
    super.key,
    required this.colors,
  }); //pass the key to the extendet class, should have const
  final List<Color> colors;
  

  @override
  Widget build(context) {
    //here you should ttake context as a parameter and return a widget
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: DiceRoller()
      ), //to use the images saved under assets
    );
  }
}
