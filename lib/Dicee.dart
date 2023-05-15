import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/services.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("A dice app"),
            backgroundColor: Colors.red,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          body: Dice(),
        ),
      ),
    );

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  void changeDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  var leftDiceNumber = 1;
  var rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
              onPressed: () {
                changeDice();
              },
              child: Image.asset('images/aaaa$rightDiceNumber.PNG',fit: BoxFit.fitWidth,),),
        ),
        Expanded(
          child: ElevatedButton(
              onPressed: () {
                changeDice();
              },
              child: Image.asset('images/aaaa$leftDiceNumber.PNG', fit: BoxFit.fitWidth)),
        ),
      ],
    );
  }
}
