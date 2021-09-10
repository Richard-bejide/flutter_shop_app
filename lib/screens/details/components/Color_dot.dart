import 'package:flutter/material.dart';
import 'package:flutter_shop_app/constants.dart';

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({required this.color, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(
            top: kDefaultPadding / 4, right: kDefaultPadding / 2),
        padding: EdgeInsets.all(2.5),
        height: 24.0,
        width: 24.0,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: isSelected ? color : Colors.transparent)),
        child: DecoratedBox(
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ));
  }
}
