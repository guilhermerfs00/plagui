import 'dart:math';

import 'package:flutter/material.dart';
import 'package:plagui/data/position_data.dart';

class PositionTile extends StatefulWidget {
  final List<Position> position;
  PositionTile(this.position);

  @override
  _PositionTileState createState() => _PositionTileState(position);
}

class _PositionTileState extends State<PositionTile> {
  final List<Position> position;
  _PositionTileState(this.position);

  @override
  Widget build(BuildContext context) {
    int ramdom = _randomNumber();
    Position pos;
    pos = position[ramdom];
    var img = pos.image + ".jpg";
    return Scaffold(
        appBar: AppBar(
          title: Text(pos.title),
          centerTitle: true,
          backgroundColor: Colors.purple[700],
        ),
        body: Column(
          children: <Widget>[
            img == null
                ? Container(
                    padding: EdgeInsets.all(50),
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  )
                : Image.asset('assets/images/' + pos.image + '.jpg'),
            Padding(
                padding: EdgeInsets.all(16.0),
                child: Container(
                  height: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      SizedBox(
                        height: 16.0,
                      ),
                      Text(
                        "Descrição",
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        pos.description,
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                    ],
                  ),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 300,
                  height: 42,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => PositionTile(position)));
                    },
                    child: Text(
                      "Rodar",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.red,
                  ),
                )
              ],
            )
          ],
        ));
  }
}

int _randomNumber() {
  Random random = new Random();
  int min = 0;
  int max = 41;

  int number = random.nextInt(max) + min;

  return number;
}
