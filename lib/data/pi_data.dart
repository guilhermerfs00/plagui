class Pi {
  String description;
  
  Pi({this.description});

  factory Pi.fromJson(Map<String, dynamic> json) {
    return Pi(
      description: json['description'] as String,
    );
  }
}