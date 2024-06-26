import 'dart:math';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeImage = 2;

  void rollDice() {
    setState(() {
      activeImage = Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice$activeImage.png',
          width: 200,
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: 200,
          child: ElevatedButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              padding: const EdgeInsets.only(
                top: 3,
              ),
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              textStyle:
                  const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            child: const Text("Roll Dice"),
          ),
        )
      ],
    );
  }
}
