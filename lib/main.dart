import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

final appColor = Colors.red;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: appColor,
        appBar: AppBar(
          backgroundColor: appColor,
          centerTitle: true,
          title: Text("Dice"),
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  DicePage({Key key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var diceNumber = 1;
  var dice2Number = 1;

  int getDiceNumber() {
    return Random().nextInt(6) + 1;
  }

  void changeDiceFace() {
    setState(() {
      diceNumber = getDiceNumber();
      dice2Number = getDiceNumber();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset("assets/images/dices/dice$diceNumber.png"),
              onPressed: () {
                changeDiceFace();
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset("assets/images/dices/dice$dice2Number.png"),
              onPressed: () {
                changeDiceFace();
              },
            ),
          ),
        ],
      ),
    );
  }
}
