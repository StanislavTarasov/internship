import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import 'package:navigation/converter_route.dart';
import 'package:navigation/unit.dart';

class Category extends StatelessWidget {
  final String name;
  final IconData icon;
  final Color color;
  final List<Unit> units;

  const Category(
      {@required this.name,
      @required this.icon,
      @required this.color,
      @required this.units})
      : assert(name != null),
        assert(icon != null),
        assert(color != null),
        assert(units != null);

  void _navigateToConverter(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute<Null>(
      builder: (BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            elevation: 1.0,
            title: Text(
              name,
              // ignore: deprecated_member_use
              style: Theme.of(context).textTheme.display1,
            ),
            centerTitle: true,
            backgroundColor: color,
          ),
          body: ConverterRoute(
            color: color,
            units: units,
          ),
        );
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        height: 100,
        child: InkWell(
          borderRadius: BorderRadius.circular(50),
          highlightColor: color,
          splashColor: color,
          onTap: () {
            _navigateToConverter(context);
          },
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Icon(
                    icon,
                    size: 60.0,
                  ),
                ),
                Center(
                  child: Text(
                    name,
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
