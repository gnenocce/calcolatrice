import 'package:flutter/material.dart';

class OperationButton extends StatelessWidget {

  OperationButton({
    required this.onPressedAction,
    required this.image,
  });

  final Color backgroundColor = Colors.white30;
  final VoidCallback onPressedAction;
  final AssetImage image;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      //  onPressed: onPressedAction,
        onPressed: onPressedAction,
        fillColor: backgroundColor,
        child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: backgroundColor ),
              child: Image(image: image),
            )
        )

    );
  }
}