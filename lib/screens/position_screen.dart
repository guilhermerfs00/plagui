import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:plagui/data/position_data.dart';
import 'package:plagui/model/position_model.dart';
import 'package:plagui/tile/position_tile.dart';

class PositionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
            future: DefaultAssetBundle.of(context).loadString('assets/position.json'),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                var showData = json.decode(snapshot.data.toString());
                List<Position> data = PositionModel().decode(showData);
                return PositionTile(data);
              }
            }),
      ),
    );
  }
}
