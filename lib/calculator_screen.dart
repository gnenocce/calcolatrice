import 'package:flutter/material.dart';

class CalculatorScreen extends StatelessWidget {

  CalculatorScreen({required this.displayData});

  String displayData;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.lightGreen[50],
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Text(
          displayData,
          textScaleFactor: 2.0,
        ),
      )
    );
  }

}