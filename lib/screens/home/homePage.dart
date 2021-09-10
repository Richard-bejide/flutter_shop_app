import 'package:flutter/material.dart';
import 'package:flutter_shop_app/constants.dart';
import 'components/body.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppBar(), body: Body());
  }
}

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
        onPressed: () {}, icon: Icon(Icons.arrow_back, color: kTextColor)),
    actions: <Widget>[
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.search, color: kTextColor),
      ),
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.shopping_cart_outlined,color: kTextColor),
      ),
      SizedBox(width: kDefaultPadding / 2)
    ],
  );
}
