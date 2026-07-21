class SubscribeModel {
  final String? id;
  final String? price;
  final String? subPrice;
  final String? monthNumber;

  final String? package;
  final bool isYearly;

  SubscribeModel({
    this.id,
    this.subPrice,
    this.price,
    this.monthNumber,
    this.package,
    required this.isYearly,
  });
}
