import 'dart:math';

import 'package:flutter/material.dart';

class ColoredContainer extends StatefulWidget {
  const ColoredContainer({super.key, this.color = Colors.blue});

  final Color color;

  @override
  State<ColoredContainer> createState() => _ColoredContainerState();
}

class _ColoredContainerState extends State<ColoredContainer> {
  final Random random = Random();

  int _diceValue = 1;

  void _rollDice() {
    setState(() {
      _diceValue = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final String diceImage = 'assets/images/dice-$_diceValue.png';

    return Container(
      decoration: BoxDecoration(
        color: widget.color,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              diceImage,
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: _rollDice,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 10,
                ),
              ),
              child: const Text('Roll Dice'),
            ),
          ],
        ),
      ),
    );
  }
}
