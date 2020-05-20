import 'package:plagui/data/position_data.dart';

class PositionModel {
  List<Position> decode(json) {
    List<Position> position = json["positions"].map<Position>((map) {
      return Position.fromJson(map);
    }).toList();
    return position;
  }
}
