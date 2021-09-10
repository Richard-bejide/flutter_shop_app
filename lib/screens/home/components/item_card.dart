import 'package:flutter/material.dart';
import 'package:flutter_shop_app/constants.dart';
import 'package:flutter_shop_app/models/product.dart';

class ItemCard extends StatelessWidget {
  final Product product;

  const ItemCard({required this.product});

  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Container(
              padding: EdgeInsets.all(kDefaultPadding),
              height: 180.0,
              width: 160.0,
              child: Hero(
                  tag: "${product.id}", child: Image.asset("${product.image}")),
              decoration: BoxDecoration(
                  color: product.color,
                  borderRadius: BorderRadius.circular(16.0))),
        ),
        Padding(
            padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
            child: Text("${product.title}",
                style: TextStyle(color: kTextLightColor))),
        Text(
          "\$ ${product.price}",
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
