import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart'; // Required only for debbuging
import './product_manager.dart';

void main() {
  // debugPaintSizeEnabled = true;
  // debugPaintBaselinesEnabled = true;
  // debugPaintPointersEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return MaterialApp(
        // debugShowMaterialGrid: true,
        theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.deepOrange,
          accentColor: Colors.deepPurple
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Easylist"),
          ),
          body: ProductManager(startingProduct: "Food tester",),
        ),
      );
    }
}