import 'package:flutter/material.dart';

class OnTapDemo extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    final title = 'Gesture Demo';
    return MaterialApp(
      title: title,
      home: MyHomePage(title: title),
    );
  }
}


class MyHomePage extends StatelessWidget{
  final String title;

  MyHomePage({Key? key, required this.title}): super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: MyButton(),
      ),
    );
  }

}

class MyButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: (){
        final snackBar = SnackBar(content: Text('Tap'));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      child: Container(
          padding: EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: Theme.of(context).buttonColor,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Text('My Button')
      ),
    );
  }
}