import 'package:flutter/material.dart';
import './pages/product.dart';

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
      itemBuilder: _itemBuilder,
      itemCount: products.length,
    );
  }

  

  Widget _itemBuilder(BuildContext context, int index) {
    return Card(
            child: Column(
              children: <Widget>[
                Image.asset(products[index]['image']),
                Container(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:<Widget>[
                      Text(
                        products[index]['title'],
                        style: TextStyle(
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Oswald'
                        ),
                      ),
                      SizedBox(width: 8.0,),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.5),
                        decoration: BoxDecoration(
                          color: Theme.of(context).accentColor,
                          borderRadius: BorderRadius.circular(5.0)),
                        child: Text( '\$' + products[index]['price'].toString(), style: TextStyle(color: Colors.white), ),
                      )
                  ],),
                ),
                DecoratedBox(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 1.0
                      ),
                      borderRadius: BorderRadius.circular(6.0)
                    )
                  ,
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.5),
                      child: Text("Union Square, San Francisco"),
                    ) 
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.info),
                    color: Colors.grey,
                    onPressed: () => Navigator
                    .pushNamed<bool>(context,'/product/' + index.toString())
                  ),
                  IconButton(
                    icon: Icon(Icons.favorite_border),
                    color: Colors.red,
                    onPressed: () => Navigator.pushNamed<bool>(context,'/product/' + index.toString())
                  )
                ],)
              ],
            ),
          );
  }

  
}