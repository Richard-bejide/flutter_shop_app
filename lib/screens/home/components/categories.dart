import 'package:flutter/material.dart';
import 'package:flutter_shop_app/constants.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Hand Bag", "Jewelry", "Footwear", "Dresses"];
  //By default our first item will be selected
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: SizedBox(
        height: 25.0,
        child: ListView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(categories[index],
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: selectedIndex == index
                                ? kTextColor
                                : kTextLightColor)),
                    Container(
                        margin: EdgeInsets.only(top: kDefaultPadding / 4),
                        height: 2.0,
                        width: 30.0,
                        color: selectedIndex == index
                            ? Colors.black
                            : Colors.transparent)
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
