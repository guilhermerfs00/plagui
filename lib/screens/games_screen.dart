import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plagui/tile/game_tile.dart';

class GameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var game = 0xff392850;
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xff392850), elevation: 0.0),
      backgroundColor: Color(game),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      "GAMES",
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          GridDashboard()
        ],
      ),
    );
  }
}
