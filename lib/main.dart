import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SnackBar Demo',
    
      home:Scaffold(
        appBar: AppBar(
          title: Text('SnackBar Demo'),
        ),
        body: SnackBarPage(),
      )
    );
  }
}

class SnackBarPage extends StatelessWidget{
 @override
 Widget build(BuildContext context) {
    
    return Center(
      child: RaisedButton(
          onPressed: (){
            final snackBar = SnackBar(
              content: Text('Tay! A SnackBar !'),
              action: SnackBarAction(
                  label: 'UNdo',
                  onPressed: (){

                  }
              ),
            );
            Scaffold.of(context).showSnackBar(snackBar);
          },
        child: Text('Show SnackBar'),
      ),
    );
  } 
}