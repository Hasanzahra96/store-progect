import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/constant/color.dart';

import 'package:store/view/widgets/custom_text.dart';

class FromToRangeFilterWidget extends StatelessWidget {
  final Widget? firstWidget;
  final Widget? secondWidget;

  const FromToRangeFilterWidget({
    super.key,
    required this.firstWidget,
    required this.secondWidget,
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
            firstWidget ?? Container(),
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
            secondWidget ?? Container(),
          ],
        ),
      ],
    );
  }
}
