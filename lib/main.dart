import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MagicBall(),
  );
}

class MagicBall extends StatefulWidget {
  const MagicBall({super.key});

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int magicNumber = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Ask Me Anything')),
        ),
        body: Center(
          child: TextButton(
            onPressed: (() {
              setState(() {
                magicNumber = Random().nextInt(5) + 1;
              });
            }),
            child: Image.asset('image/ball$magicNumber.png'),
          ),
        ),
      ),
    );
  }
}
