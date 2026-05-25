class VechicleItemModel {
  final String id;
  final String brandId;
  final String modelId;
  final String payTypeId;
  final String stateId;
  final String? title;
  final String? subtitle;
  final String? time;
  final String? image;
  final List<String>? images;
  final String? pay;
  final String? state;
  final String? location;
  final int? price;
  final String? user;
  final String? feuleType;

  VechicleItemModel({
    required this.id,
    required this.brandId,
    required this.modelId,
    required this.payTypeId,
    required this.stateId,
    this.image,
    this.title,
    this.subtitle,
    this.time,
    this.pay,
    this.location,
    this.state,
    this.price,
    this.images,
    this.user,
    this.feuleType,
  });
}
