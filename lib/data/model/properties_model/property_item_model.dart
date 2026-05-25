import 'package:store/core/class/property_type_status.dart';

class PropertyItemModel {
  final String id;
  final PropertyTypeStatus? type;
  final String propertyId;
  final String featureId;
  final String payTypeId;
  final String lowStateId;
  final String lowState;
  final String stateId;
  final String state;
  final String? title;
  final String? subtitle;
  final String? time;
  final String? image;
  final List<String>? images;
  final String? pay;
  final String? area;
  final String? location;
  final int? price;
  final String? user;

  PropertyItemModel(
      {required this.id,
      required this.propertyId,
      required this.featureId,
      required this.payTypeId,
      required this.lowStateId,
      required this.stateId,
      required this.lowState,
      required this.state,
      this.image,
      this.title,
      this.subtitle,
      this.time,
      this.pay,
      this.location,
      this.price,
      this.images,
      this.user,
      this.type,
      this.area});

  factory PropertyItemModel.fromJson(Map<String, dynamic> json) {
    print('propertyId from json: ${json['propertyId']}');
    print(
        'type after parse: ${_parseType(int.tryParse(json['propertyId']?.toString() ?? '') ?? 0)}');
    return PropertyItemModel(
      id: json['id'] ?? '',
      propertyId: json['propertyId']?.toString() ?? '',
      stateId: json['stateId']?.toString() ?? '',
      payTypeId: json['payTypeId']?.toString() ?? '',
      featureId: json['featureId']?.toString() ?? '',
      image: json['image'],
      title: json['title'],
      subtitle: json['subtitle'],
      time: json['time'],
      pay: json['pay'],
      location: json['location'],
      state: json['state'],
      price: json['price'],
      images: (json['images'] as List?)?.map((e) => e.toString()).toList(),
      user: json['user'],
      type: _parseType(int.tryParse(json['propertyId']?.toString() ?? '') ?? 0),
      lowStateId: '',
      lowState: '',
    );
  }

  static PropertyTypeStatus _parseType(int id) {
    switch (id) {
      case 1:
        return PropertyTypeStatus.apartment;
      case 2:
        return PropertyTypeStatus.room;
      case 3:
        return PropertyTypeStatus.office;
      case 4:
        return PropertyTypeStatus.earth;
      default:
        return PropertyTypeStatus.unknown;
    }
  }
}
