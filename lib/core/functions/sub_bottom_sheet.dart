import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/core/functions/show_custom_bottom_sheet.dart';
import 'package:store/view/widgets/custom_button.dart';
import 'package:store/view/widgets/custom_text.dart';
import 'package:store/view/widgets/custom_text_rich.dart';

subBottomSheet({Function()? onPressed1, Function()? onPressed2}) {
  showCustomBottomSheet(actions: [
    Column(mainAxisSize: MainAxisSize.min, children: [
      SizedBox(
        height: 32.h,
      ),
      Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: [
                AppColor.buttonColor.withOpacity(0.3),
                AppColor.buttonColor.withOpacity(0.2),
                AppColor.buttonColor.withOpacity(0.01),
              ],
              center: Alignment.center,
              radius: 0.5,
            ),
            shape: BoxShape.circle,
          ),
          child: Icon(Icons.local_offer_outlined,
              color: AppColor.buttonColor, size: 50.sp)),
      SizedBox(
        height: 32.h,
      ),
      CustomText(
        data: 'الاشتراك مطلوب',
        fontsize: 18.sp,
        fontweight: FontWeight.bold,
        color: AppColor.buttonColor,
      ),
      SizedBox(
        height: 8.h,
      ),
      CustomText(
        data: 'لإضافة ونشر الإعلانات , يجب تفعيل الاشتراك السنوي',
        fontsize: 12.sp,
      ),
      SizedBox(
        height: 32.h,
      ),
      CustomButton(
        data: 'اشترك الآن',
        onPressed: onPressed1,
      ),
      SizedBox(
        height: 8.h,
      ),
      CustomTextRich(
        data: 'لاحقاً',
        onTap: onPressed2,
        fontweight: FontWeight.w500,
        fontsize: 16.sp,
        color: AppColor.browneColor,
      )
    ])
  ]);
}
