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
    return RawMaterialButton(
      //  onPressed: onPressedAction,
      onPressed: onPressedAction,
      fillColor: backgroundColor,
        child: Padding(
          padding: EdgeInsets.all(2.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: backgroundColor ),
            child:  Text(
              action,
              style: TextStyle(
                  color: textColor),
            ),
          )
        )

    );
  }
}