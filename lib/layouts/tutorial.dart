import 'package:flutter/material.dart';

class TutorialLayout extends StatelessWidget {
  late Color _color;

  Widget _buildTitleWidget() => Container(
        padding: const EdgeInsets.all(32),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      'Oeschinan Lake',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    'Kandersteg, Switzerland',
                    style: TextStyle(
                      color: Colors.grey[500],
                    ),
                  )
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red[500],
            ),
            Text('41')
          ],
        ),
      );

  Widget _buildButtonSection() => Container(
        padding: const EdgeInsets.all(32),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildButtonColumn(_color, Icons.call, 'Call'),
            _buildButtonColumn(_color, Icons.near_me, 'Route'),
            _buildButtonColumn(_color, Icons.share, 'Share')
          ],
        ),
      );

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  Widget textSection = Container(
    padding: const EdgeInsets.all(32),
    child: Text(
      'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
      'Alps. Situated 1,578 meters above sea level, it is one of the '
      'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
      'half-hour walk through pastures and pine forest, leads you to the '
      'lake, which warms to 20 degrees Celsius in the summer. Activities '
      'enjoyed here include rowing, and riding the summer toboggan run.',
      softWrap: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    _color = Theme.of(context).primaryColor;
    // TODO: implement build
    return MaterialApp(
      title: 'Layout Tutorial',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Layout Tutorial'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/lake.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            _buildTitleWidget(),
            _buildButtonSection(),
            textSection
          ],
        ),
      ),
    );
  }
}
