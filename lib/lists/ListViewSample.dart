import 'package:flutter/material.dart';

class ListViewSample extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final appTitle = 'BasicList';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Maps'),
            ),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('Album'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
            )
          ],
        ),
      ),
    );
  }
}