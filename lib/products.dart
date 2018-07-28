import 'package:flutter/material.dart';


class Products extends StatelessWidget {

  final List<String> products; //Because of is a StateLessWidget

  Products([this.products = const []]) {
    print("[Products] constructor");
  }

  @override
    Widget build(BuildContext context) {
      print("[Products] build");
      print("🛑 products:");
      print(products);

      return Column(
              children: products
                .map( (product) => Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/food.jpg'),
                      Text(product)
                    ],
                  ),
                )).toList(),
              );
    }
}