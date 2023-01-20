import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
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
  // const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
  // State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 5;
  int rightDiceNumber = 1;
  int changeDiceNumber() => Random().nextInt(6) + 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      verticalDirection: VerticalDirection.down,
      children: [
        Row(children: [
          SizedBox(height: 600),
          Expanded(
              child: TextButton(
            onPressed: () {
              setState(() {
                leftDiceNumber = changeDiceNumber();
                rightDiceNumber = changeDiceNumber();
              });
              print('Left button got pressed');
            },
            child: Image.asset('images/dice$leftDiceNumber.png'),
          )),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  leftDiceNumber = changeDiceNumber();
                  rightDiceNumber = changeDiceNumber();
                });
                print('Right button got pressed');
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ]),
        Text(
          'Developed by @samuelthapamagar',
          style: TextStyle(
            fontFamily: 'SourceSansPro',
          ),
        ),
      ],
    );
  }
}
