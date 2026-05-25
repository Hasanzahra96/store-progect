import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/view/widgets/custom_text.dart';

class SimilarAdsWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subTitle;
  final int price;
  final String state;

  const SimilarAdsWidget(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.subTitle,
      required this.price,
      required this.state});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12.r),
          topRight: Radius.circular(12.r),
        ),
      ),
      width: 220.w,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12.r),
                topRight: Radius.circular(12.r),
              ),
              child: AspectRatio(
                aspectRatio: 2 / 1,
                child: Image.asset(
                  imagePath,
                  filterQuality: FilterQuality.high,
                  width: double.infinity,
                  gaplessPlayback: true,
                  fit: BoxFit.cover,
                ),
              )),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  data: '$title $subTitle',
                  fontsize: 14.sp,
                ),
                SizedBox(height: 4.h),
                CustomText(
                  data: ' $state',
                  fontsize: 12.sp,
                  color: AppColor.greyColor,
                ),
                SizedBox(height: 4.h),
                CustomText(
                  data: '$price ل.س',
                  fontsize: 16.sp,
                  fontweight: FontWeight.bold,
                  color: AppColor.browneColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
