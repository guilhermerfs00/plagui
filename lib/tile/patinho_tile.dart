import 'dart:math';

import 'package:flutter/material.dart';
import 'package:plagui/data/patinho_data.dart';

class PatinhoTile extends StatefulWidget {
  final List<Patinho> patinho;

  PatinhoTile(this.patinho);

  @override
  _PiTileState createState() => _PiTileState(patinho);
}

class _PiTileState extends State<PatinhoTile> {
  final List<Patinho> patinho;

  _PiTileState(this.patinho);

  @override
  Widget build(BuildContext context) {
    int ramdom = _randomNumber();
    Patinho patinhoDescricao;
    patinhoDescricao = patinho[ramdom];
    return Text(
      patinhoDescricao.description,
      style: TextStyle(color: Colors.white, fontSize: 16),
    );
  }

  int _randomNumber() {
    Random random = new Random();
    int min = 0;
    int max = 6;

    int number = random.nextInt(max) + min;

    return number;
  }
}