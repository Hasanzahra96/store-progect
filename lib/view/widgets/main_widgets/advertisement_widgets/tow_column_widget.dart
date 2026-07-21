import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/view/widgets/custom_text.dart';

class TowColumnWidget extends StatelessWidget {
  final String? firstData;
  final String? secondData;
  final Widget? firstWidget;
  final Widget? secondWidget;
  const TowColumnWidget({
    super.key,
    this.firstData,
    this.secondData,
    this.firstWidget,
    this.secondWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              align: AlignmentDirectional.centerStart,
              data: firstData ?? '',
              fontsize: 16.sp,
              color: AppColor.fontColor,
              fontweight: FontWeight.bold,
            ),
            SizedBox(height: 8.h),
            firstWidget ?? Container(),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              align: AlignmentDirectional.centerStart,
              data: secondData ?? '',
              fontsize: 16.sp,
              color: AppColor.fontColor,
              fontweight: FontWeight.bold,
            ),
            SizedBox(height: 8.h),
            secondWidget ?? Container()
          ],
        ),
      ],
    );
  }
}
