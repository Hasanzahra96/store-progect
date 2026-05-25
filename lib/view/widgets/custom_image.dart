import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  final String? image;
  final double? heigh;
  final double? width;
  final BoxFit? fit;
  const CustomImage({
    super.key,
    this.image,
    this.heigh,
    this.width,
    this.fit,
  });

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(image!),
    );
  }
}
