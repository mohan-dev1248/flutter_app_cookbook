import 'package:flutter/material.dart';

class DismissibleList extends StatefulWidget {
  DismissibleList({Key? key}) : super(key: key);

  @override
  _DismissibleList createState() => _DismissibleList();
}

class _DismissibleList extends State<DismissibleList> {
  final items = List<String>.generate(20, (index) => 'Item ${index + 1}');


  @override
  Widget build(BuildContext context) {
    final title = 'Dismissing Items';
    return MaterialApp(
      title: title,
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return Dismissible(
                key: Key(item),
                onDismissed: (direction) {
                  setState(() {
                    items.removeAt(index);
                  });

                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$item  dismissed')));
                },
                background: Container(color: Colors.red,),
                child: ListTile(title: Text(item),),
              );
            }
        ),
      ),
    );
  }
}