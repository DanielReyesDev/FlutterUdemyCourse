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

  String _titleValue = "";
  String _descriptionValue = "";
  double _priceValue = 0.0;
  bool _acceptTerms = false;



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
                  _titleValue = value;
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
                  _descriptionValue = value;
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
                  _priceValue = double.parse(value);
                });
              },
            ),
            SwitchListTile(
              title: Text("Accept Terms"),
              value: this._acceptTerms,
              onChanged: (bool value){
                setState(() {
                  _acceptTerms = value;
                });
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            RaisedButton(
              child: Text("Save"),
              color: Theme.of(context).accentColor,
              textColor: Colors.white,
              onPressed: (){
                final Map<String, dynamic> product = {
                  'title' : _titleValue,
                  'description': _descriptionValue,
                  'price': _priceValue,
                  'image': 'assets/food.jpg'
                };
                widget.addProduct(product);
                Navigator.pushReplacementNamed(context, "/");
              },
            )
          ],
        ),
      );
      
    }
}