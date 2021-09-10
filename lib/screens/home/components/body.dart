import 'package:flutter/material.dart';
import 'package:flutter_shop_app/constants.dart';
import 'package:flutter_shop_app/models/product.dart';
import 'package:flutter_shop_app/screens/details/details_page.dart';
import 'package:flutter_shop_app/screens/home/components/categories.dart';
import 'package:flutter_shop_app/screens/home/components/item_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
        Widget>[
      Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text('Women',
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(fontWeight: FontWeight.bold))),
      Categories(),
      Expanded(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: GridView.builder(
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: kDefaultPadding,
                    crossAxisSpacing: kDefaultPadding,
                    childAspectRatio: 0.75),
                itemBuilder: (context, index) => GestureDetector(
                  
                    child: ItemCard(
                      product: products[index],
                    ),
                  
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              DetailsPage(product: products[index]))),
                ),
              )))
    ]);
  }
}
