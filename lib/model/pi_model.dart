import 'package:plagui/data/pi_data.dart';

class PiModel {
    List<Pi> decode(json) {
    List<Pi> pi = json["patinho"].map<Pi>((map) {
      return Pi.fromJson(map);
    }).toList();
    return pi;
  }
}