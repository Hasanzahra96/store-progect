import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/view/widgets/custom_text.dart';
import 'package:store/view/widgets/layout_horizontal_responsive.dart';

class ConfirmInfoWidget extends StatelessWidget {
  const ConfirmInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutHorizontalResponsive(
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Row(
        children: [
          const Icon(
            Icons.safety_check_outlined,
            color: AppColor.browneColor,
          ),
          SizedBox(
            width: 4.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                data: 'بيانات محمية',
                fontsize: 14.sp,
                color: AppColor.buttonColor,
              ),
              CustomText(
                data: 'بتقنية عالية',
                fontsize: 10.sp,
                color: AppColor.greyColor,
              ),
            ],
          ),
        ],
      ),
      Row(
        children: [
          const Icon(
            Icons.access_time,
            color: AppColor.browneColor,
          ),
          SizedBox(
            width: 4.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                data: 'عملية فورية',
                fontsize: 14.sp,
                color: AppColor.buttonColor,
              ),
              CustomText(
                data: 'تفعيل الاشتراك مباشرة',
                fontsize: 10.sp,
                color: AppColor.greyColor,
              ),
            ],
          ),
        ],
      ),
      Row(
        children: [
          const Icon(
            Icons.monetization_on_outlined,
            color: AppColor.browneColor,
          ),
          SizedBox(
            width: 4.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                data: 'دفع آمن',
                fontsize: 14.sp,
                color: AppColor.buttonColor,
              ),
              CustomText(
                data: '100%',
                fontsize: 10.sp,
                color: AppColor.greyColor,
              ),
            ],
          ),
        ],
      ),
    ]));
  }
}
