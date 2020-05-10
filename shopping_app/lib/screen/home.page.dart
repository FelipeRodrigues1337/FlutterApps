import 'package:flutter/material.dart';
import 'package:shoppingapp/screen/product.page.dart';
import 'package:shoppingapp/widgets/category/category-list.widget.dart';
import 'package:shoppingapp/widgets/product/product-card.widget.dart';
import 'package:shoppingapp/widgets/product/product-list.widget.dart';
import 'package:shoppingapp/widgets/search-box.widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          width: double.infinity,
          color: Color(0xFFF5F5F),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 60,
              ),
              SearchBox(),
              SizedBox(
                height: 30,
              ),
              Text(
                "Categories",
                style: Theme.of(context).textTheme.headline,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 90,
                child: CategoryList(),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.only(right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Best Selling",
                      style: Theme.of(context).textTheme.headline,
                    ),
                    FlatButton(
                      child: Text(
                        "See All",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 350,
                child: ProductList(
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
