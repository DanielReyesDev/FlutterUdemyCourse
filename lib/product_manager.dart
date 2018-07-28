import 'package:flutter/material.dart';
import './products.dart';
import './product_control.dart';

class ProductManager extends StatefulWidget {

  final String startingProduct;

  ProductManager({this.startingProduct = "Sweets Tester"}) {
    print("[Product Manager] constructor");
  }

  @override
    State<StatefulWidget> createState() {
      print("[Product Manager] createState");
      return _ProductManagerState();
    }
}

class _ProductManagerState extends State<ProductManager> {
  // final List<String> _products = const []; -> this makes totally unmodifiable our list
  final List<String> _products = [];

  
  @override
  void initState() {
    print("[Product Manager State] initState");
    super.initState();
    _products.add(widget.startingProduct); // It only can be used 
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("[Product Manager State] didUpdateWidget");

  }

  void _addProduct(String product) {
    setState(() {
      _products.add(product); //we're not asign it a new list, just mutating the List, that's why 'final' works
    });
  }

  @override
    Widget build(BuildContext context) {
      print("🛑 products:");
      print(_products);
      return Column(
        children: <Widget>[
           Container(
              margin: EdgeInsets.all(16.0),
              child: ProductControl(_addProduct), //Passing a reference to the function
            ),
            Products(this._products),
        ],
      );
    }
}
