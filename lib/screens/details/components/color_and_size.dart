import 'package:flutter/material.dart';
import 'package:flutter_shop_app/constants.dart';
import 'package:flutter_shop_app/constants.dart';
import 'package:flutter_shop_app/models/product.dart';
import 'package:flutter_shop_app/screens/details/components/Color_dot.dart';

class ColorAndSize extends StatelessWidget {
  final Product product;
  const ColorAndSize({
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Color"),
              Row(
                children: <Widget>[
                  ColorDot(
                    color: Color(0xFF356C95),
                    isSelected: true,
                  ),
                  ColorDot(
                    color: Color(0xFFF8C078),
                  ),
                  ColorDot(color: Color(0xFFA29090)),
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(style: TextStyle(color: kTextColor), children: [
              TextSpan(text: 'Size\n'),
              TextSpan(
                  text: "${product.size} cm",
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(color: kTextColor, fontWeight: FontWeight.bold))
            ]),
          ),
        ),
      ],
    );
  }
}
