import 'package:flutter/material.dart';
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
        '/sueca': (BuildContext context) => new SuecaScreen(),
      },
    );
  }
}
