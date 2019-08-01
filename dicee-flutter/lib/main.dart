import 'package:flutter/material.dart';
import 'dart:math';


void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int LDice = Random.secure().nextInt(6) + 1;
  int RDic = Random.secure().nextInt(6) + 1;


  void Change_Dice() {
    setState(() {
      LDice = Random.secure().nextInt(6) + 1;
      RDic = Random.secure().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                Change_Dice();
              },
              child: Image(
                image: AssetImage('images/dice$LDice.png'),
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  Change_Dice();
                });
              },
              child: Image(
                image: AssetImage('images/dice$RDic.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
