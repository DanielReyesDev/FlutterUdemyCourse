import 'package:flutter/material.dart';
import './products.dart';

class ProductManager extends StatefulWidget {

  final String startingProduct;

  ProductManager(this.startingProduct);

  @override
    State<StatefulWidget> createState() {
      return _ProductManagerState();
    }
}

class _ProductManagerState extends State<ProductManager> {

  List<String> _products = [];

  
  @override
  void initState() {
    _products.add(widget.startingProduct); // It only can be used 
    super.initState();
  }


  @override
    Widget build(BuildContext context) {
      print("🛑 products:");
      print(_products);
      return Column(
        children: <Widget>[
           Container(
              margin: EdgeInsets.all(16.0),
              child: RaisedButton(
                  onPressed: (){
                    setState(() {
                      _products.add("advanced food tester");
                    });
                  },
                  child: Text("Add Product"),
                ),
            ),
            Products(this._products),
        ],
      );
    }
}
