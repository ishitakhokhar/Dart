import 'dart:math';
import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {

  List<String> diceImages = [
    "assets/images/dice1.png",
    "assets/images/dice2.png",
    "assets/images/dice3.png",
    "assets/images/dice4.png",
    "assets/images/dice5.png",
    "assets/images/dice6.png",
  ];

  int currentIndex = 0;

  void rollDice() {
    setState(() {
      currentIndex = Random().nextInt(diceImages.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Dice Roll"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(
              diceImages[currentIndex],
              width: 150,
              height: 150,
            ),

            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: rollDice,
              child: const Text("Roll Dice"),
            ),
          ],
        ),
      ),
    );
  }
}
