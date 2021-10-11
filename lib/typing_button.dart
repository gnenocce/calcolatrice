import 'package:calcolatrice/main.dart';
import 'package:flutter/material.dart';

class TypingButton extends StatelessWidget {

  TypingButton({
    required this.action,
    required this.onPressedAction,

});

  final String action;
  final Color textColor = Colors.white, backgroundColor = Colors.black87;
  final VoidCallback onPressedAction;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(2.0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: backgroundColor
          ),
          child: TextButton(
              onPressed: onPressedAction,
              child: Text(action,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    color: textColor
                ),
              )
          ),
        )
    );
  }
}