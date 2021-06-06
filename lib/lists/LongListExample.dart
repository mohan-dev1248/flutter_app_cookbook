import 'package:flutter/material.dart';

class LongListExample extends StatelessWidget {
  final List<String> items = List.generate(1000, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    final appTitle = 'Working with Long lists';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (content, index) {
              return ListTile(
                title: Text(items[index]),
              );
            }),
      ),
    );
  }
}