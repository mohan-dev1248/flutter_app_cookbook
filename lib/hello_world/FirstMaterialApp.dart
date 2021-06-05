import 'package:flutter/material.dart';


//For a Material app, you can use a Scaffold widget; it provides a default banner,
//background color, and has API for adding drawers, snack bars, and bottom sheets.
class FirstMaterialWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout demo'),
        ),
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}