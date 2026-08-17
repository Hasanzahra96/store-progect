import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/view/widgets/custom_text.dart';

class RowWidget extends StatelessWidget {
  final String? title;
  final String? subTitle;
  const RowWidget({
    super.key,
    this.title,
    this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
          data: title ?? '',
          fontsize: 16.sp,
          color: AppColor.browneColor,
        ),
        CustomText(
          data: subTitle ?? '',
          fontsize: 18.sp,
          color: AppColor.buttonColor,
        ),
      ],
    );
  }
}
