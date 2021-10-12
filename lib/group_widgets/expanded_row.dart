import 'package:flutter/material.dart';

class ExpandedRow extends StatelessWidget {

  ExpandedRow({
    required this.children,
    required this.crossAxisAlignment,
});

  final List<Widget> children;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) =>
      Expanded(
        flex: 2,
        child: Row(
          children: children,
            crossAxisAlignment: crossAxisAlignment,
        )
      );
}