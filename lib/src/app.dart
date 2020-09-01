import 'package:flutter/material.dart';

class App extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Let\'s see some images!')),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('Hi sweetie!');
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
