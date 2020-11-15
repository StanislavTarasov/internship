import 'package:flutter/material.dart';

import 'package:navigation/category.dart';
import 'package:navigation/unit.dart';

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

  List<Unit> _retrieveUnitList(String categoryName) {
    return List.generate(10, (int i) {
      i += 1;
      return Unit(
        name: '$categoryName Unit $i',
        conversion: i.toDouble(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final categories = <Category>[];

    for (var i = 0; i < _baseColors.length; i++) {
      categories.add(Category(
          name: _categoryNames[i],
          icon: Icons.cake,
          color: _baseColors[i],
          units: _retrieveUnitList(_categoryNames[i])));
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
