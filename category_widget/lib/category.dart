import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String name;
  final IconData icon;
  final Color color;

  const Category(this.name, this.icon, this.color);

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
            print('I was tapped!');
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
