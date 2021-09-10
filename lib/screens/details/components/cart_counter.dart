import 'package:flutter/material.dart';
import 'package:flutter_shop_app/constants.dart';

class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
            width: 40.0,
            height: 32.0,
            child: OutlinedButton(
                onPressed: () {
                  if (numOfItems > 1) setState(() => numOfItems--);
                },
                // padding: EdgeInsets.zero,
                style: OutlinedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(13))),
                ),
                child: Icon(Icons.remove, color: kTextColor))),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          //if no of items is less than 10. it pads the left with 0
          child: Text("${numOfItems.toString().padLeft(2, "0")}",
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(color: kTextColor, fontWeight: FontWeight.bold)),
        ),
        SizedBox(
            width: 32.0,
            height: 32.0,
            child: OutlinedButton(
                onPressed: () {
                  setState(() => numOfItems++);
                },
                // padding: EdgeInsets.zero,
                style: OutlinedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(13)))),
                child: Icon(Icons.add, color: kTextColor)))
      ],
    );
  }
}
