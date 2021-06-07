import 'package:flutter/material.dart';

class FloatingAppBar extends StatelessWidget{
  FloatingAppBar({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = 'Floating App Bar';
    return MaterialApp(
      title: title,
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              title: Text(title),
              floating: true,
              expandedHeight: 200,
              flexibleSpace: Placeholder(),
              pinned: true,
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
                    (count, index) {
                      return ListTile(title: Text('Item $index'),);
                    },
                  childCount: 1000
                )
            )
          ],
        ),
      ),
    );
  }
}