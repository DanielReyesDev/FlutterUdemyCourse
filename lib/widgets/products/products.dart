import 'package:flutter/material.dart';
import './product_card.dart';

class Products extends StatelessWidget {

  final List<Map<String,dynamic>> products; //Because of is a StateLessWidget

  Products(this.products) {
    print("[Products] constructor");
  }

  @override
  Widget build(BuildContext context) {
    print("[Products] build");
    print("🛑 products:");
    print(products);
    return products.length > 0 ? _buildProductsList() : _buildCleanState();
  }

  Widget _buildCleanState(){
    return Center(child: Text("No Products found, please add some"),);
  }
  
  Widget _buildProductsList(){
    // All ListViews need to be wrapped up on a class that has Container as it's parent class
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => ProductCard(this.products[index], index),
      itemCount: products.length,
    );
  }

  

  Widget _itemBuilder(BuildContext context, int index) {
    return 
  }

  
}