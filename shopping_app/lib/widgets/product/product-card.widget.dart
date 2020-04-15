import 'package:flutter/material.dart';
import 'package:shoppingapp/screen/product.page.dart';

class ProductItem extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final double price;

  ProductItem({
    @required this.image,
    this.title,
    this.description,
    this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(5),
      width: 170,
      color: Colors.black12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductPage(
                    image: image,
                    title: title,
                    description: description,
                    price: price,
                  ),
                ),
              );
            },
            child: Image.asset(
              image,
              width: 170,
              height: 170,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 60,
            child: Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            description,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "\$ $price",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFF00C569),
            ),
          ),
        ],
      ),
    );
  }
}
