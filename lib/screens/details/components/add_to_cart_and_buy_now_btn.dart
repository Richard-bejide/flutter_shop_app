import 'package:flutter/material.dart';
import 'package:flutter_shop_app/models/product.dart';

import '../../../constants.dart';

class AddToCartAndBuyNowBtn extends StatelessWidget {
  const AddToCartAndBuyNowBtn({
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
        child: Row(
          children: <Widget>[

            
            Container(
                margin: EdgeInsets.only(right: kDefaultPadding),
                height: 50.0,
                width: 58.0,
                decoration: BoxDecoration(
                    border: Border.all(color: product.color!),
                    borderRadius: BorderRadius.circular(18)),
                child: IconButton(
                    onPressed: () {},
                    icon:
                        Icon(Icons.shopping_cart_sharp, color: product.color))),


            Expanded(
              child: SizedBox(
                  height: 50.0,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        shape: const BeveledRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(18))),
                        backgroundColor: product.color
                        
                        ),
                    onPressed: () {},
                    child: Text("Buy Now",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold)),
                  )),
            )
          ],
        ));
  }
}
