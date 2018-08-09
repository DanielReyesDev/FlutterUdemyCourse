import 'package:flutter/material.dart';
import './products.dart';
import './product_control.dart';

class ProductManager extends StatelessWidget {

  final List<Map<String,String>> products ;
  final Function addProduct;
  final Function deleteProduct;

  ProductManager(this.products, this.addProduct, this.deleteProduct);

//   final Map startingProduct;

//   // startingProduct is optional for the constructor
//   ProductManager({this.startingProduct}) {
//     print("[Product Manager] constructor");
//   }

//   @override
//     State<StatefulWidget> createState() {
//       print("[Product Manager] createState");
//       return _ProductManagerState();
//     }
// }

// class _ProductManagerState extends State<ProductManager> {
//   // final List<String> _products = const []; -> this makes totally unmodifiable our list
//   final List<Map<String,String>> _products = [];

  
//   @override
//   void initState() {
//     super.initState();
//     print("[Product Manager State] initState");
//     if (widget.startingProduct != null) {
//       _products.add(widget.startingProduct);
//     }
//   }

//   @override
//   void didUpdateWidget(ProductManager oldWidget) {
//     super.didUpdateWidget(oldWidget);
//     print("[Product Manager State] didUpdateWidget");

//   }
  

  @override
    Widget build(BuildContext context) {
      print("🛑 products:");
      print(products);
      return Column(
        children: <Widget>[
           Container(
              margin: EdgeInsets.all(16.0),
              child: ProductControl(addProduct), //Passing a reference to the function
            ),
            Expanded(child: Products(this.products, deleteProduct: this.deleteProduct),)
        ],
      );
    }
}
