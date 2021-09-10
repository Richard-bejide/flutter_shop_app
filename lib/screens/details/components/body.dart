import 'package:flutter/material.dart';
import 'package:flutter_shop_app/constants.dart';
import 'package:flutter_shop_app/models/product.dart';
import 'package:flutter_shop_app/screens/details/components/add_to_cart_and_buy_now_btn.dart';
import 'package:flutter_shop_app/screens/details/components/cart_counter.dart';
import 'package:flutter_shop_app/screens/details/components/color_and_size.dart';
import 'package:flutter_shop_app/screens/details/components/description.dart';
import 'package:flutter_shop_app/screens/details/components/favourite.dart';
import 'package:flutter_shop_app/screens/details/components/product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;
  Body({required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(top: size.height * 0.3),
                    padding: EdgeInsets.only(
                        top: size.height * 0.10,
                        left: kDefaultPadding,
                        right: kDefaultPadding),
                    height: 500.0,
                    child: Column(
                      children: <Widget>[
                        ColorAndSize(product: product),
                        SizedBox(height: kDefaultPadding/4),
                        Description(product: product),
                        SizedBox(height: kDefaultPadding/4),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[CartCounter(), Favourite()]),
                        SizedBox(height: kDefaultPadding/4),
                        AddToCartAndBuyNowBtn(product: product), 
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24.0),
                            topRight: Radius.circular(24.0)),
                        color: Colors.white)),
                ProductTitleWithImage(product: product),
              ],
            ),
          )
        ],
      ),
    );
  }
}
