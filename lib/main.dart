import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(DiceGame());

class DiceGame extends StatefulWidget {
  @override
  _DiceGameState createState() => _DiceGameState();
}

class _DiceGameState extends State<DiceGame> {
  int leftDice = 1;
  int rightDice = 1;

  void diceChange() {
    leftDice = Random().nextInt(6) + 1;
    rightDice = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[800],
        appBar: AppBar(
          title: Text('Dice Game'),
          backgroundColor: Colors.grey[900],
        ),
        body: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      diceChange();
                    });
                  },
                  child: Image(
                    image: AssetImage('images/dice$leftDice.png'),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      diceChange();
                    });
                  },
                  child: Image(
                    image: AssetImage('images/dice$rightDice.png'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
