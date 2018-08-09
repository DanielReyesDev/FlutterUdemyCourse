import 'package:flutter/material.dart';

class ProductCreatePage extends StatefulWidget {

  final Function addProduct;
  final Function deleteProduct;

  ProductCreatePage(this.addProduct, this.deleteProduct);

  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return ProductCreatePageState();
    }
}

class ProductCreatePageState extends State<ProductCreatePage> {

  String titleValue = "";
  String descriptionValue = "";
  double priceValue = 0.0;



  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return Container(
        margin: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: "Product title"
              ),
              onChanged: (String value) {
                setState(() {
                  titleValue = value;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Product description"
              ),
              maxLines: 4,
              onChanged: (String value) {
                setState(() {
                  descriptionValue = value;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Product price"
              ),
              keyboardType: TextInputType.number,
              onChanged: (String value) {
                setState(() {
                  priceValue = double.parse(value);
                });
              },
            ),
            RaisedButton(
              child: Text("Save"),
              onPressed: (){
                final Map<String, dynamic> product = {
                  'title' : titleValue,
                  'description': descriptionValue,
                  'price': priceValue,
                  'image': 'assets/food.jpg'
                };

                widget.addProduct(product);
              },
            )
          ],
        ),
      );
      
    }
}