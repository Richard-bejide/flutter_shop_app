import "package:flutter/material.dart";
import 'package:flutter_shop_app/constants.dart';
import 'package:flutter_shop_app/models/product.dart';
import 'package:flutter_shop_app/screens/details/components/body.dart';

class DetailsPage extends StatelessWidget {
  final Product product;
  DetailsPage({required this.product});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: product.color,
        appBar: buildAppBar(context),
        body: Body(product: product));
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0.0,
      leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back, color: Colors.white)),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search, color: Colors.white),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.shopping_cart_outlined, color: Colors.white),
        ),
        SizedBox(width: kDefaultPadding / 2)
      ],
    );
  }
}
