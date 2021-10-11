import 'package:flutter/material.dart';

class OperationButton extends StatelessWidget {

  OperationButton({
    required this.onPressedAction,
    required this.symbol,
  });

  final Color backgroundColor = Colors.orange;
  final VoidCallback onPressedAction;
  final String symbol;

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
              child: Text(symbol,
                style: TextStyle(
                    fontSize: 30.0,
                ),
              )
          ),
        )
    );
  }
}