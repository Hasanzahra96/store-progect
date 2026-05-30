import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/view/widgets/custom_text.dart';

class InfoWidget extends StatelessWidget {
  final IconData? firstIcon;
  final String? firstTitel;
  final String? firstSubTitel;

  const InfoWidget({
    super.key,
    this.firstIcon,
    this.firstTitel,
    this.firstSubTitel,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          firstIcon ?? Icons.info,
          size: 20.sp,
          color: AppColor.buttonColor,
        ),
        SizedBox(width: 8.w),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              data: firstTitel ?? '',
              fontsize: 12.sp,
              color: AppColor.greyColor,
            ),
            SizedBox(height: 8.h),
            CustomText(
              data: firstSubTitel ?? '',
              fontsize: 14.sp,
              color: AppColor.fontColor,
            ),
          ],
        ),
      ],
    );
  }
}
