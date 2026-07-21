import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/view/widgets/custom_text.dart';

class FeatureItemWidget extends StatelessWidget {
  final String? label;
  final String? feature;

  const FeatureItemWidget({super.key, this.label, this.feature});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 80.h,
      decoration: BoxDecoration(
          color: AppColor.whiteColor,
          borderRadius: BorderRadius.circular(12.r)),
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomText(
            data: label ?? '',
            fontsize: 14.sp,
            color: AppColor.fontColor,
          ),
          SizedBox(height: 8.h),
          CustomText(
            data: feature ?? '',
            fontsize: 16.sp,
            color: AppColor.buttonColor,
            fontweight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}
