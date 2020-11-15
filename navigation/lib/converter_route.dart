import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import 'package:navigation/unit.dart';

class ConverterRoute extends StatelessWidget {
  final List<Unit> units;
  final Color color;

  const ConverterRoute({
    @required this.units,
    @required this.color,
  })  : assert(color != null),
        assert(units != null);

  @override
  Widget build(BuildContext context) {
    final unitWidgets = units.map((Unit unit) {
      return Container(
        color: color,
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(
              unit.name,
              // ignore: deprecated_member_use
              style: Theme.of(context).textTheme.headline,
            ),
            Text(
              'Conversion: ${unit.conversion}',
              // ignore: deprecated_member_use
              style: Theme.of(context).textTheme.subhead,
            ),
          ],
        ),
      );
    }).toList();

    return ListView(
      children: unitWidgets,
    );
  }
}
