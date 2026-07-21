import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/view/widgets/custom_text.dart';

class SubCardWidget extends StatelessWidget {
  final String? price;
  final String? monthNumber;

  const SubCardWidget({
    super.key,
    this.price,
    this.monthNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.h,
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
      ),
      decoration: BoxDecoration(
          color: AppColor.buttonColor,
          borderRadius: BorderRadius.circular(24.r)),
      child: Center(
        child: Row(
          children: [
            CustomText(
              data: price ?? '',
              fontweight: FontWeight.bold,
              fontsize: 32.sp,
              color: AppColor.browneColor,
            ),
            CustomText(
              data: 's.p',
              fontsize: 16.sp,
              color: AppColor.browneColor,
            ),
            const Spacer(),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: EdgeInsets.all(4.r),
                  decoration: const BoxDecoration(
                      color: AppColor.whiteColor, shape: BoxShape.circle),
                  child: Icon(Icons.date_range_outlined,
                      size: 42.r, color: AppColor.buttonColor),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Row(
                  children: [
                    CustomText(
                      data: monthNumber ?? '',
                      fontsize: 24.sp,
                      color: AppColor.whiteColor,
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
