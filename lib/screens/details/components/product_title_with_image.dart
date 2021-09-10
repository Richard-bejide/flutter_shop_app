import 'package:flutter/material.dart';
import 'package:flutter_shop_app/constants.dart';
import 'package:flutter_shop_app/models/product.dart';

class ProductTitleWithImage extends StatelessWidget {
  final Product product;
  ProductTitleWithImage({required this.product});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Aristocratic HandBag", style: TextStyle(color: Colors.white)),
          Text("${product.title}",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
          // SizedBox(height: kDefaultPadding),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              RichText(
                text: TextSpan(children: [
                  TextSpan(text: 'Price\n'),
                  TextSpan(
                      text: "\$${product.price}",
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold))
                ]),
              ),
              SizedBox(width: kDefaultPadding),
              Expanded(
                  child: Hero(
                tag: "${product.id}",
                child: Image.asset("${product.image}",
                    height: 200.0, width: 70.0, fit: BoxFit.fill),
              ))
            ],
          )
        ],
      ),
    );
  }
}
