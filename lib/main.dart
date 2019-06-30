/*
ORIGINAL AUTHOR: Raja Yogan (https://www.youtube.com/watch?v=VO9ZrbvKz6s)
DATE CREATED: 30/06/2019
DATE REVISED: 
PURPOSE: To create a set of floating buttons that will float over the app's UI
*/

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Floating buttons demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Tap on the button'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: showButtons,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

  void showButtons() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    createButton(Colors.red, 'red'),
                    createButton(Colors.yellow, 'yellow'),
                    createButton(Colors.green, 'green')
                  ],
                ),
              )
            ],
          );
        });
  }

  RaisedButton createButton(Color color, String name) {

    return RaisedButton(
      color: color,
      onPressed: () {
        print('Print ' + name);
      },
      textColor: Colors.white,
      child: Center(
        child: Text('Floating button'),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
