import 'package:flutter/material.dart';
import 'package:category_route/category.dart';

class CategoryRoute extends StatelessWidget {
  const CategoryRoute();

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _icons = <IconData>[
    Icons.straighten,
    Icons.architecture,
    Icons.campaign,
    Icons.line_weight,
    Icons.timer,
    Icons.storage,
    Icons.battery_charging_full,
    Icons.monetization_on,
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    final categories = <Category>[];

    for (var i = 0; i < _baseColors.length; i++) {
      categories.add(Category(_categoryNames[i], _icons[i], _baseColors[i]));
    }

    final listView = Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      color: Colors.green[100],
      child: new ListView(
        children: categories,
      ),
    );

    final appBar = AppBar(
      backgroundColor: Colors.green[100],
      elevation: 0.0,
      title: Text(
        'Unit Converter',
        style: TextStyle(
          color: Colors.black,
          fontSize: 30.0,
        ),
      ),
      centerTitle: true,
    );

    return Scaffold(
      appBar: appBar,
      body: listView,
    );
  }
}
