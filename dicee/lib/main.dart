import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {


  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdicenumber = 1;
  int rightdicenumber = 1;
  Random random = Random.secure();

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 40));
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset('images/dice$leftdicenumber.png'),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset('images/dice$rightdicenumber.png'),
                ),
              ),
            ],
          ),
        ),
        Center(
          child: Container(
            margin: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    leftdicenumber = random.nextInt(6) + 1;
                    rightdicenumber = random.nextInt(6) + 1;
                  });
                },
                style: style,
                child: const Text('ROLL')),
          ),
        )
      ],
    );
  }
}
