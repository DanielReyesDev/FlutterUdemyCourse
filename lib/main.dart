import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      return _MyAppState();
    }
}

class _MyAppState extends State<MyApp> {
  List products;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Easylist"),
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(16.0),
              child: RaisedButton(
                  onPressed: (){

                  },
                  child: Text("Add Product"),
                ),
            ),
            Card(
              child: Column(
              children: <Widget>[
                  Image.asset('assets/food.jpg'),
                  Text("Food Paradise")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}