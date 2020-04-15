import 'package:flutter/material.dart';
import 'package:shoppingapp/widgets/product/product-card.widget.dart';

class ProductList extends StatelessWidget {
  final Axis scrollDirection;

  ProductList({@required this.scrollDirection});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: scrollDirection,
        children: <Widget>[
          ProductItem(
            title: "Nike Dry-Fit Long Sleeve",
            description: "Nike",
            image: "assets/product-10.png",
            price: 150,
          ),
          ProductItem(
            title: "BeoPlay Speaker",
            description: "Bang and Olufsen",
            image: "assets/product-1.png",
            price: 755,
          ),
          ProductItem(
            title: "Leather Wristwatch",
            description: "Tag Heuer",
            image: "assets/product-2.png",
            price: 450,
          ),
          ProductItem(
            title: "Smart Bluetooth Speaker",
            description: "Google Inc.",
            image: "assets/product-3.png",
            price: 900,
          )
        ],
      ),
    );
  }
}
