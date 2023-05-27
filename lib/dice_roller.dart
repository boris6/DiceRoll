import 'dart:math';

import 'package:flutter/material.dart';

final _random = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var diceRollOne = 1;
  var diceRollTwo = 1;

  void rollDice() {
    diceRollOne = _random.nextInt(6) + 1;
    diceRollTwo = _random.nextInt(6) + 1;
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Image.asset(
              'assets/images/dice-images/dice-$diceRollOne.png',
              width: 200,
            ),
            Image.asset(
              'assets/images/dice-images/dice-$diceRollTwo.png',
              width: 200,
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        TextButton(
          onPressed: () {
            setState(() {
              rollDice();
            });
          },
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(20),
            foregroundColor: Colors.white,
            backgroundColor: Colors.blue,
            elevation: 20,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text("Roll dice"),
        ),
      ],
    );
  }
}
