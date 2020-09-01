import 'package:flutter/material.dart';

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 0;

  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            '$counter',
            style: TextStyle(
              fontSize: 50,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
        appBar: AppBar(
          title: Text('Let\'s see some images!'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              counter += 1;
            });
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
