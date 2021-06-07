import 'package:flutter/material.dart';

class CustomScrollViewDemo2 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    final appTitle = 'Demo';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              expandedHeight: 250,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(appTitle),
              ),
            ),
            SliverGrid(
                delegate: SliverChildBuilderDelegate(
                    (context, index) => Container(
                      alignment: Alignment.center,
                      color: Colors.teal[ 100 * (index % 9)],
                      child: Text('Grid Item $index'),
                    ),
                  childCount: 20
                ),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 4
                ),
            ),
            SliverFixedExtentList(
              itemExtent: 50,
                delegate: SliverChildBuilderDelegate(
                    (context, index ) => Container(
                      alignment: Alignment.center,
                      color: Colors.blue[100 * (index % 9)],
                      child: Text('List Item $index'),
                    )
                )
            )
          ],
        ),
      ),
    );
  }
}