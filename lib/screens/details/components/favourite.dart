import 'package:flutter/material.dart';

class Favourite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 32,
      padding: const EdgeInsets.all(2.0),

      child: Icon(Icons.favorite_rounded,
       color: Colors.white),

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFFFF6464),
      ),
    );
  }
}
