import 'package:flutter/material.dart';
import './products.dart';
import './product_control.dart';

class ProductManager extends StatelessWidget {

  final List<Map<String,dynamic>> products ;

  ProductManager(this.products);

  @override
    Widget build(BuildContext context) {
      print("🛑 products:");
      print(products);
      return Column(
        children: <Widget>[
          //  Container(
          //     margin: EdgeInsets.all(16.0),
          //     child: ProductControl(addProduct), //Passing a reference to the function
          //   ),
            Expanded(child: Products(this.products),)
        ],
      );
    }
}
