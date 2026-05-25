class SuggestedPropertiesModel {
  final String? title;
  final String? subtitle;
  final String? time;
  final String? image;
  final double? area;
  final String? location;
  final double? price;

  SuggestedPropertiesModel({
    this.image,
    this.title,
    this.subtitle,
    this.time,
    this.area,
    this.location,
    this.price,
  });

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'subtitle': subtitle,
      'time': time,
      'image': image,
      'area': area,
      'location': location,
      'price': price,
    };
  }

  static double _toDouble(dynamic v) {
    if (v is num) return v.toDouble();
    if (v is String) return double.tryParse(v) ?? 0.0;
    return 0.0;
  }

  factory SuggestedPropertiesModel.fromJson(Map<String, dynamic> json) {
    return SuggestedPropertiesModel(
      title: json['title'] as String? ?? '',
      image: json['image'] as String? ?? '',
      subtitle: json['subtitle'] as String? ?? '',
      time: json['time'] as String? ?? '',
      area: _toDouble(json['area']),
      location: json['location'] as String? ?? '',
      price: _toDouble(json['price']),
    );
  }
}
