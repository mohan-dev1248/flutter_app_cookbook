import 'package:flutter/material.dart';

class TextChangeExample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Retrieve Text Input',
      home: MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatefulWidget{

  @override
  _MyCustomForm createState() => _MyCustomForm();
}

class _MyCustomForm extends State<MyCustomForm>{

  final myController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    myController.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  void _printLatestValue(){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(myController.text)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Retrieve Text Input'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              TextField(
                onChanged: (text) {
                  print('First text field: $text');
                },
              ),
              TextField(
                controller: myController,
              ),
            ],
          ),
        )
    );
  }
}



