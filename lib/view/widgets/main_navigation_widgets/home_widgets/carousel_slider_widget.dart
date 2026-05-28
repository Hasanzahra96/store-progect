import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:store/data/datasource/static/images_sliedar.dart';

class CarouselSliderWidget extends StatelessWidget {
  const CarouselSliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: imageUrls.length,
      itemBuilder: (context, index, realIndex) {
        final url = imageUrls[index];
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 6.h),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12.r),
            child: Image.asset(
              url,
              fit: BoxFit.cover,
              width: double.infinity,
              gaplessPlayback: true,
              filterQuality: FilterQuality.high,
            ),
          ),
        );
      },
      options: CarouselOptions(
        aspectRatio: 16 / 9,
        autoPlay: true,
        reverse: true,
        autoPlayCurve: Curves.easeInOut,
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayInterval: const Duration(seconds: 4),
        viewportFraction: 0.96,
        enlargeCenterPage: true,
        enlargeFactor: 0.12,
        enableInfiniteScroll: true,
      ),
    );
  }
}
