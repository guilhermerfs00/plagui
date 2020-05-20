class Position {
  String title;
  String description;
  String category;
  String image;
  

  Position({this.title, this.description, this.category, this.image,});

  factory Position.fromJson(Map<String, dynamic> json) {
    return Position(
      title: json['title'] as String,
      description: json['description'] as String,
      category: json['category'] as String,
      image: json['image'] as String,
    );
  }
}