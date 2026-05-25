import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/core/utile/media_query.dart';
import 'package:store/view/widgets/custom_text.dart';

class CustomPriceRange extends StatelessWidget {
  final double startValue;
  final double endValue;

  const CustomPriceRange({
    super.key,
    required this.startValue,
    required this.endValue,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              data: 'من',
              fontsize: 14.sp,
              color: AppColor.buttonColor,
            ),
            SizedBox(height: 4.h),
            Container(
              alignment: AlignmentDirectional.centerStart,
              padding: EdgeInsets.symmetric(horizontal: 15.0.w),
              decoration: BoxDecoration(
                  color: AppColor.checkBoxColor.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(12)),
              width: context.screenWidth / 2.3,
              height: 48.h,
              child: CustomText(
                data: '${startValue.round()}',
                fontsize: 16.sp,
                color: AppColor.buttonColor,
              ),
            ),
          ],
        ),
        const Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              data: 'إلى',
              fontsize: 16.sp,
              color: AppColor.buttonColor,
            ),
            SizedBox(height: 4.h),
            Container(
              alignment: AlignmentDirectional.centerStart,
              padding: EdgeInsets.symmetric(horizontal: 15.0.w),
              decoration: BoxDecoration(
                  color: AppColor.checkBoxColor.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(12)),
              width: context.screenWidth / 2.3,
              height: 48.h,
              child: CustomText(
                data: '${endValue.round()}',
                fontsize: 16.sp,
                color: AppColor.buttonColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
