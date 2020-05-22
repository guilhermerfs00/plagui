import 'dart:math';

import 'package:flutter/material.dart';
import 'package:plagui/data/pi_data.dart';

class PiTile extends StatefulWidget {

  final List<Pi> pi;
  PiTile(this.pi);

  @override
  _PiTileState createState() => _PiTileState(pi);
}

class _PiTileState extends State<PiTile> {
  
  final List<Pi> pi;
  _PiTileState(this.pi);

  @override
  Widget build(BuildContext context) {

    int ramdom = _randomNumber();
    Pi piDescricao;
    piDescricao = pi[ramdom];
    return Text(piDescricao.description, style: TextStyle(color: Colors.white, fontSize: 16),);
  }

  int _randomNumber() {
  Random random = new Random();
  int min = 0;
  int max = 6;

  int number = random.nextInt(max) + min;

  return number;
}

}