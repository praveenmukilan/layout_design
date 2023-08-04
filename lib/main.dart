// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";

//Build a layout
// https://docs.flutter.dev/ui/layout/tutorial

void main() => runApp(const MyApp());

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
        padding: const EdgeInsets.all(32),
        child: Row(
          children: const [
            Expanded(
              child: Column(
                children: [
                  Text('Oeschinen Lake Compground',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Kandersteg Switzerland')
                ],
              ),
            ),
            Column(children: [
              Icon(
                Icons.star,
                color: Colors.red,
              )
            ]),
            Column(children: [Text('41')]),
          ],
        ));

    Color buttonSectionButtonsColor = Theme.of(context).primaryColor;
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: [
        _buildButtonColumn(Icons.call, buttonSectionButtonsColor, "CALL"),
        _buildButtonColumn(Icons.near_me, buttonSectionButtonsColor, "ROUTE"),
        _buildButtonColumn(Icons.share, buttonSectionButtonsColor, "SHARE"),
      ],
    );

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
        ));

    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter demo')),
        body: ListView(
          children: [
            Image.network(
              'https://images.unsplash.com/photo-1471115853179-bb1d604434e0',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  } // build

  Column _buildButtonColumn(IconData icon, Color color, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: color,
        ),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.bold, color: color),
          ),
        ),
      ],
    );
  }
} //class