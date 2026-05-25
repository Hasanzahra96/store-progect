class SuggestedVehiclesModel {
  final String? title;
  final String? subtitle;
  final String? time;
  final String? image;
  final String? engine;
  final String? location;
  final double? price;

  SuggestedVehiclesModel({
    this.image,
    this.title,
    this.subtitle,
    this.time,
    this.engine,
    this.location,
    this.price,
  });

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'subtitle': subtitle,
      'time': time,
      'engine': engine,
      'location': location,
      'price': price,
    };
  }

  factory SuggestedVehiclesModel.fromJson(Map<String, dynamic> json) {
    return SuggestedVehiclesModel(
      title: json['title'] ?? '',
      image: json['image'] ?? '',
      subtitle: json['subtitle'] ?? '',
      time: json['time'] ?? '',
      engine: (json['engine'] ?? 0).toDouble(),
      location: json['location'] ?? '',
      price: (json['price'] ?? 0).toDouble(),
    );
  }
}
