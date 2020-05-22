class Patinho {
  String description;

  Patinho({this.description});

  factory Patinho.fromJson(Map<String, dynamic> json) {
    return Patinho(
      description: json['description'] as String,
    );
  }
}