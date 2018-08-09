import 'package:flutter/material.dart';
import 'dart:async';

class ProductPage extends StatelessWidget {

  final String title;
  final String imageUrl;

  ProductPage(this.title, this.imageUrl);

  _showWarningDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text("Are you sure?"),
          content: Text("This action cannot be undone!"),
          actions: <Widget>[
            FlatButton(
              child: Text("Discard"),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
            FlatButton(
              child: Text("Continue"),
              onPressed: (){
                Navigator.pop(context);
                Navigator.pop(context, true);
              },
            )
          ],
        );
    });
  }

  @override
    Widget build(BuildContext context) {
      return  WillPopScope(
        onWillPop: (){
          print("⚠️ willPopScope");
          Navigator.pop(context,false);
          return Future.value(false); // Allow the user to leave
        },
        child: Scaffold(
            appBar: AppBar(
              title: Text(this.title),
            ),
            body: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(this.imageUrl),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Text(this.title),
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: RaisedButton(
                        color: Theme.of(context).accentColor,
                        child: Text("Delete"),
                        onPressed: () => _showWarningDialog(context), //this annonymous function basically wraps the other function without excecuting it
                      ),
                  )                
                ],
            ),
        ),
      );
    }
}  