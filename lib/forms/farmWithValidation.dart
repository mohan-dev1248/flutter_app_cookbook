import 'package:flutter/material.dart';

class MyCustomFarm extends StatefulWidget {
  @override
  _MyCustomFartState createState() => _MyCustomFartState();
}

class _MyCustomFartState extends State<MyCustomFarm> {
  @override
  Widget build(BuildContext context) {

    //Every form should have a unique key
    final _formKey = GlobalKey<FormState>();

    return Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              validator: (value) {
                if(value == null || value.isEmpty){
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text('Processing Data')));
                }
              },
              child: Text('Submit'),
            ),
          ],
        )
    );
  }
}

class FormExample1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Form Validation Example';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: MyCustomFarm(),
      ),
    );
  }
}
