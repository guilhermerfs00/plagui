import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:plagui/data/patinho_data.dart';
import 'package:plagui/model/patinho_model.dart';
import 'package:plagui/tile/patinho_tile.dart';

class PatinhoGame extends StatefulWidget {
  @override
  _PatinhoGameState createState() => _PatinhoGameState();
}

class _PatinhoGameState extends State<PatinhoGame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PATINHO'),
        centerTitle: true,
        backgroundColor: Color(0xff392850),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              color: Color(0xff392850),
              child: Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 150,
                      ),
                      Center(
                        child: FutureBuilder(
                            future: DefaultAssetBundle.of(context)
                                .loadString('assets/patinho.json'),
                            builder: (context, snapshot) {
                              if (!snapshot.hasData) {
                                return Center(
                                  child: CircularProgressIndicator(),
                                );
                              } else {
                                var showData =
                                    json.decode(snapshot.data.toString());
                                List<Patinho> data =
                                    PatinhoModel().decode(showData);
                                return PatinhoTile(data);
                              }
                            }),
                      ),
                      SizedBox(
                        height: 150,
                      ),
                      Container(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "Cada pessoa fala uma palavra da frase, quem errar bebe",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 150,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: 300,
                            height: 42,
                            child: RaisedButton(
                              onPressed: () {
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (context) => PatinhoGame()));
                              },
                              child: Text(
                                "Próxima frase",
                                style: TextStyle(color: Colors.white),
                              ),
                              color: Colors.purple[900],
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
