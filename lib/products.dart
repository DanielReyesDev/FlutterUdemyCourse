import 'package:flutter/material.dart';


class Products extends StatelessWidget {

  final List<String> products; //Because of is a StateLessWidget

  Products([this.products = const []]) {
    print("[Products] constructor");
  }

  Widget _itemsBuilder(BuildContext context, int index) {
    return Card(
            child: Column(
              children: <Widget>[
                Image.asset('assets/food.jpg'),
                Text(products[index])
              ],
            ),
          );
  }

  @override
    Widget build(BuildContext context) {
      print("[Products] build");
      print("🛑 products:");
      print(products);
      // All ListViews need to be wrapped up on a class that has Container as it's parent class
      return ListView.builder(
        itemBuilder: _itemsBuilder,
        itemCount: products.length,
      );
    }
}