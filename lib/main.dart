import 'package:flutter/material.dart';
import 'package:plagui/games/africa_game_screen.dart';
import 'package:plagui/games/beber_game_screen.dart';
import 'package:plagui/games/eu_nunca_game_screen.dart';
import 'package:plagui/games/patinho_game_screen.dart';
import 'package:plagui/games/pi_game_screen.dart';
import 'package:plagui/games/sueca_game_screen.dart';
import 'package:plagui/screens/games_screen.dart';
import 'package:plagui/screens/home_screen.dart';
import 'package:plagui/screens/position_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: HomeScreen(),
      routes: <String, WidgetBuilder>{
        '/position': (BuildContext context) => new PositionScreen(),
        '/game': (BuildContext context) => new GameScreen(),
        '/africa': (BuildContext context) => new AfricaGame(),
        '/beber': (BuildContext context) => new BeberGame(),
        '/euNunca': (BuildContext context) => new EuNuncaGame(),
        '/patinho': (BuildContext context) => new PatinhoGame(),
        '/pi': (BuildContext context) => new PiGame(),
        '/sueca': (BuildContext context) => new SuecaScreen(),
      },
    );
  }
}
