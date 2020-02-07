import 'package:flutter/material.dart';

class Dosen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Padding(
              padding: new EdgeInsets.all(20.0),
            ),
            new Text(
              "Dosen",
              style: new TextStyle(fontSize: 18, color: Colors.blueAccent),
            ),
            new Padding(
              padding: new EdgeInsets.all(20.0),
            ),
            new Icon(
              Icons.people,
              size: 90,
            )
          ],
        ),
      ),
    );
  }
}
