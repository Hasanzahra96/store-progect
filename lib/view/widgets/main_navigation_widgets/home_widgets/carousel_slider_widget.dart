import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:store/data/datasource/static/images_sliedar.dart';

class CarouselSliderWidget extends StatelessWidget {
  const CarouselSliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: imageUrls.map((url) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 4.r, vertical: 2.r),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r), // ✅ responsive
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 8.r,
                offset: Offset(0, 4.r),
              ),
            ],
          ),
          clipBehavior: Clip.antiAlias, // ✅ حواف ناعمة
          child: Image.asset(
            url,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
            gaplessPlayback: true, // ✅ لا وميض
            filterQuality: FilterQuality.high,
          ),
        );
      }).toList(),
      options: CarouselOptions(
        reverse: true,
        aspectRatio: 16 / 9,
        autoPlay: true,
        autoPlayCurve: Curves.linearToEaseOut,
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        viewportFraction: 1, // ✅ شوية هواء من الجوانب
        enlargeCenterPage: true, // ✅ تأثير جميل
        enlargeFactor: 0.1,
        autoPlayInterval: Duration(seconds: 4),
      ),
    );
  }
}
