
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DisplayImageFromNet extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    final title = 'Display Image from net';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Image.network('https://picsum.photos/250?image=9'),
      ),
    );
  }
}