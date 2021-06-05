import 'package:flutter/material.dart';

class MyCustomForm extends StatefulWidget{

  @override
  _MyCustomForm createState() => _MyCustomForm();
}

class _MyCustomForm extends State<MyCustomForm>{

  late FocusNode focusNode;

  @override
  void initState() {
    super.initState();
    focusNode = FocusNode();
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     appBar: AppBar(
       title: Text('Focus requesting Demo'),
     ),
     body: Padding(
       padding: EdgeInsets.all(16.0),
       child: Column(
         children: [
           TextField(
             autofocus: true,
           ),
           TextField(
             focusNode: focusNode,
           )
         ],
       ),
     ),
     floatingActionButton: FloatingActionButton(
       child: Icon(Icons.edit),
       onPressed: () => focusNode.requestFocus(),
       tooltip: 'Focus second tooltip',
     ),
   );
  }
}

class FormExample3 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    final appTitle = 'Focus requesting Demo';

    return MaterialApp(
      title: appTitle,
      home: MyCustomForm()
    );
  }
}