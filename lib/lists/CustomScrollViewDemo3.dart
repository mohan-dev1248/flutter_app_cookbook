import 'package:flutter/material.dart';

class CustomScrollViewDemo3 extends StatelessWidget{

  const CustomScrollViewDemo3({Key? key}): super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget{

  const MyStatefulWidget({Key? key}): super(key: key);

  @override
  _MyStatefulWidget createState() => _MyStatefulWidget();
}

//We will add the data to top and bottom of the list
class _MyStatefulWidget extends State<MyStatefulWidget>{

  List<int> top = <int>[];
  List<int> bottom = <int>[];

  @override
  Widget build(BuildContext context) {
    const Key centreKey = ValueKey<String>('bottom-silver-list');
    return Scaffold(
      appBar: AppBar(
        title: Text('Press on the plus to add widgets on top and bottm'),
        leading: IconButton(
          icon: const Icon(Icons.add),
          onPressed: (){
            setState(() {
              top.add(-top.length-1);
              bottom.add(bottom.length);
            });
          },
        ),
      ),
      body: CustomScrollView(
        center: centreKey,
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.blue[200 + top[index] % 4 * 100],
                  height: 100 + top[index] % 4 * 20.0,
                  child: Text('Item: ${top[index]}'),
                );
              },
              childCount: top.length,
            ),
          ),
          SliverList(
            key: ValueKey<String>('bottom-silver-list'),
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.blue[200 + bottom[index] % 4 * 100],
                  height: 100 + bottom[index] % 4 * 20.0,
                  child: Text('Item: ${bottom[index]}'),
                );
              },
              childCount: bottom.length,
            ),
          ),
        ],
      ),
    );
  }
}