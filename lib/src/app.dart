import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'models/image_model.dart';
import 'dart:convert';

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 0;
  List<ImageModel> images = [];

  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            '$counter',
            style:
                TextStyle(fontSize: 50, color: Theme.of(context).primaryColor),
          ),
        ),
        appBar: AppBar(
          title: Text('Let\'s see some images!'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: fetchImage,
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  void fetchImage() async {
    counter++;
    var response =
        await get('https://jsonplaceholder.typicode.com/photos/$counter');
    var imageModel = ImageModel.fromJson(json.decode(response.body));

    setState(() {
      images.add(imageModel);
    });
  }
}
