
import 'package:flutter/material.dart';
import 'package:flutter_shop_app/constants.dart';
import 'package:flutter_shop_app/models/product.dart';

class Description extends StatelessWidget {
  const Description({
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: kDefaultPadding),
      child: Text("${product.description}", 
      style: TextStyle(height: 1.5)),
    );
  }
}
