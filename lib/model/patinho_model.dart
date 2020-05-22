import 'package:plagui/data/patinho_data.dart';
import 'package:plagui/data/pi_data.dart';

class PatinhoModel {
    List<Patinho> decode(json) {
    List<Patinho> patinho = json["patinho"].map<Pi>((map) {
      return Patinho.fromJson(map);
    }).toList();
    return patinho;
  }
}