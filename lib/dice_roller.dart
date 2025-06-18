import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  //StatefulWidget-> deal with data that can change in a widget
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

// in StatefulWidget you must always work with two classes
class _DiceRollerState extends State<DiceRoller> {
  //_ means private
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      //makes flutter re-execute build function
      currentDiceRoll = randomizer.nextInt(6) + 1; //generate a random number from 1 to 6 (the plus 1)
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min, //to center it vertically
      children: [
        Image.asset('assets/dice-images/dice-$currentDiceRoll.png', width: 200),
        //SizedBox(width: 20,)
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(top: 20),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text('Roll Dice'),
        ), //() {}-> lambda
      ],
    );
  }
}
